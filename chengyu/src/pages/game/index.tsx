import * as React from 'react';
import {
  View,
  Image,
  Button,
  getStorageSync,
  showModal,
  navigateTo,
  CoverView,
  CoverImage,
  setStorageSync,
  showToast,
    nextTick,
} from 'remax/wechat';
import {usePageEvent} from 'remax/macro';
// @ts-ignore
import className from 'classnames';
import './index.css';
import CustomAd from "@/components/CustomAd";
import {Idiom, SiteConfig, UserInfo} from "@/data";
import {useState} from "react";
import {getUserInfo, post} from "@/util/wxUtils";
import {defaultUserInfo} from "@/util/constants";

export type RedPackage = {
  min: number;
  max: number;
}

export type RedPackageConfig = {
  [key:string]: RedPackage
}
const siteConfig:SiteConfig = getStorageSync("siteInfo");
const adv = {
  status:true,
  data:[],
}
const whongbao = {
  openStatus:true,
  balance:2.2,
}

export const Game = () => {
  const [wtanchuguanka,setWtanchuguanka] = useState<boolean>(false);
  const [wtanchuhongbao,setWtanchuhongbao] = useState<boolean>(false);
  const [userInfo,setUserInfo] = useState<UserInfo>(defaultUserInfo);
  const [redPackageConfig,setRedPackageConfig] = useState<RedPackageConfig>();
  const [openStatus,setOpenStatus] = useState<boolean>(false);
  const [balance,setBalance] = useState<number>(0);
  const [idiom,setIdiom] = useState<Idiom>({
    level:0,
    answers:[],
    words:[],
    position:0,
  });
  const [text,setText] = useState<string>('');

  const get=(level?:number)=>{
    post("chengyu/get",{level:level?level:''},data=>{
      setText('');
      setIdiom(data);
    })
  }

  usePageEvent("onLoad",()=>{
    get();
    getUserInfo((data)=>{
      setUserInfo(data);
    });

    const newRedPackage:RedPackageConfig = {};
    const redPackage = siteConfig.config.redPackage || '';
    const redPackageStr:string[] = redPackage.split(";");
    for (let i=0;i<redPackageStr.length;i++){
      const redPackageStrs:string[] = redPackageStr[i].split("_");
      if(redPackageStrs.length==2){
        const min = redPackageStrs[1];
        const max = redPackageStrs[1];
        newRedPackage[`${redPackageStrs[0]}`] = {
          min:parseFloat(min),
          max:parseFloat(max),
        };
      }else if(redPackageStrs.length==3){
        const min = redPackageStrs[1];
        const max = redPackageStrs[2];
        newRedPackage[`${redPackageStrs[0]}`] = {
          min:parseFloat(min),
          max:parseFloat(max),
        };
      }
    }
    setRedPackageConfig(newRedPackage);
  })


  const judge= (result: string)=>{
    setText(result);
    /**
     * 1. ???????????????????????????????????????????????????????????????2???
     * 2. ???????????????????????????
     */
    if(userInfo.point>=siteConfig.config.levelPoint){
      let memo='';
      let type = 0;
      let continuousCount = getStorageSync('continuous') || 0;
      if(result===idiom.words[idiom.position]){
        // ?????????????????????????????????
        memo='????????????';
        type=1;
        continuousCount +=1;

        // ???????????????????????????????????????????????????
        const level:number = idiom.level;
        console.log(redPackageConfig,redPackageConfig[`${level}`],level)
        if (redPackageConfig) {
          const redPackage:RedPackage = redPackageConfig[`${level}`];
          if(redPackage){
            setWtanchuhongbao(true);
            setWtanchuguanka(false);
            nextTick(()=>{
              post("chengyu/redPackage",{
                level
              },data=>{
                if(data.code===0){
                  // ??????????????????
                  setBalance(data.data);
                }else {
                  // ??????????????????
                  setBalance(0);
                }
              })
            });
          }else{
            setWtanchuhongbao(false);
            setWtanchuguanka(true);
          }
        }else{
          setWtanchuhongbao(false);
          setWtanchuguanka(true);
        }
      }else{
        // ?????????????????????????????????
        memo='????????????';
        continuousCount = 0;
        showToast({
          title:'????????????',
          image:'/images/icon/sad.png'
        }).then()
      }
      setStorageSync('continuousCount',continuousCount);
      // ????????????
      post("chengyu/discount",{level:idiom.level,memo,type},data=>{
        // ?????????????????????????????????????????????????????????
        getUserInfo(data=>setUserInfo(data));
        // ?????????
        get();
      });
    }else{
      showModal({
        title: "????????????",
        content: "?????????????????????????????????????????????????????????",
        confirmText: "?????????",
        confirmColor: "#fd5757"
      }).then((res)=>{
        console.log("res",res);
        if(res.confirm){
          navigateTo({
            url: "/pages/jinbi/index"
          }).then();
        }
      })
    }

  }

  /**
   * ???????????????????????????
   */
  const next=()=>{
    setWtanchuguanka(false);
  }

  /**
   * ??????
   */
  usePageEvent('onShareAppMessage',()=>{
    return {
      title: '[????????????] ????????????????????????????????????',
      path: "/pages/index/index?parentId="+userInfo.id,
      imageUrl: 'tu',
    }
  })
  const openRedPackage=()=>{
    setOpenStatus(true);
  }
  return (
    <>
      <View className="game">
        <View className="menus">
          <View className="menu menu-power">
            <View className="menu-left">
              <View className="menu-text menu-power-title">????????????</View>
              <View className="menu-text menu-power-num">{userInfo.point}</View>
            </View>
            <View className="menu-right">
              <View className="menu-btn menu-btn-power">
                <View className="menu-btn-text">????????????</View>
              </View>
              <View className="menu-redbag">
                <Image src="/images/icon/index/redbagindex.png" />
              </View>
            </View>
          </View>
          {
            siteConfig.status===2 ? (
                <View className="menu menu-money">
                  <View className="menu-left">
                    <View className="menu-text menu-money-title">????????????</View>
                    <view className="menu-text menu-money-num">{userInfo.balance}</view>
                  </View>
                  <View className="menu-right">
                    <View className="menu-btn menu-btn-money">
                      <View className="menu-btn-money menu-btn-text">??????</View>
                    </View>
                  </View>
                </View>
            ) : null
          }
        </View>
        <View className="wchengyu">
          <View className="title">??? {idiom.level} ???</View>
          <View className="chenyubox">
            {
              (idiom.words||[]).map((item,index)=>(<View className="wchengyuitem" key={index}>{index===idiom.position?'?':item}</View>))
            }
          </View>
        </View>
        <View className="wxuanxiang">
          {
            (idiom.answers||[]).map((item,index)=>(<View className={className('wopt',text===item?'werr':'')} key={index} onClick={()=>{
              judge(item);
            }}>{item}</View>))
          }
        </View>
        <View className="wshare">
          <Button className="wbangzhu" openType="share">????????????</Button>
        </View>
        <View className="wad">
          <CustomAd adIds={siteConfig.ads?.game} />
        </View>
      </View>
      {
        wtanchuguanka ? (
            <CoverView className="wbox" style={{zIndex: 1000}}>
              <CoverView className="wsuccess">
                <CoverView className="wsuccessbtn">
                  <CoverImage className="img" src="/images/icon/detail/correct.png" />
                </CoverView>
                <CoverView className="wtitle">??????????????????</CoverView>
                <CoverView className="wcon">?????????????????????????????????</CoverView>
                <CoverView onClick={()=>next()} className="wbtn">???????????????</CoverView>
              </CoverView>
              {
                adv.status ? (
                    <CoverView className="links">
                      {
                        adv.data.map((item:{
                          appid:string;
                          image:string;
                          name: string;
                        })=>(
                            <CoverView key={item.appid}>
                              <CoverImage className="avatar" src={item.image} />
                              <CoverView className="name">{item.name}</CoverView>
                            </CoverView>
                        ))
                      }

                    </CoverView>
                ) : null
              }
            </CoverView>
        ) : null
      }
      {
        wtanchuhongbao ? (
            <CoverView className="wbox" style={{zIndex:10000}}>
              <CoverView className="whongbao">
                <CoverImage className="wbgimg" src="/images/icon/redbag.png" />
                <CoverView className="wtitle">??????</CoverView>
                <CoverView className="wcon">???????????????????????????</CoverView>
                <CoverView className="wopenhongbao">
                  {
                    openStatus ? (
                        <>
                          {
                            balance>0 ? (
                                <CoverView className="wshowhongbao">{balance} ???</CoverView>
                            ) : (
                                <CoverView className="wshowhongbao">?????????????????????</CoverView>
                            )
                          }
                        </>
                    ) : (
                        <CoverImage onClick={()=>{
                          openRedPackage()
                        }} className="whongbaoimg" src="/images/icon/open.png" />
                    )
                  }
                </CoverView>
                <CoverView className="wmiaoshu">?????????????????????????????????</CoverView>
              </CoverView>
              <CoverView className="wclose" onClick={()=>setWtanchuhongbao(false)}>
                <CoverImage className="wcloseimg" src="/images/icon/detail/poster/close.png" />
              </CoverView>
            </CoverView>
        ) : null
      }



    </>
  );
};

export default Game;
