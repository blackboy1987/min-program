var t, e = function(t) {
    return t && t.__esModule ? t : {
        default: t
    };
}(require("../../utils/tools.js"));

getApp(), Page({
    data: {
        id: 0,
        indicatorDots: !1,
        vertical: !1,
        autoplay: !0,
        interval: 5e3,
        duration: 1e3,
        isScrollY: !0,
        current: 0,
        isIphoneX: !1,
        isIphone: !1,
        extra_info_tab: 1,
        level: 1,
        p: 1,
        isover: !1
    },
    onLoad: function(e) {
        t = this;
        t.setData({
            appConfig:wx.getStorageSync("appConfig"),
            config:{
                ad_type:1,
                grid_ad:'grid_ad',
                one_currency:123,
                two_currency:22,
                audit_model:true,
            },

        })
    },
    onReady: function() {
        t.loadContent();
    },
    loadContent: function() {
        var a = {
            action: "log",
            contr: "clock",
            level: t.data.level,
            token: wx.getStorageSync("token"),
            p: t.data.p,
            today: 1
        };
        wx.showLoading({
            title: "加载中"
        }), e.default.request(a, function(e) {
            console.log("e.info",e.data);
            let a = e.data.list;
            if(a.length<10){
                t.setData({
                    isover: true,
                })
            }
            t.data.p > 1 && (a = t.data.log.concat(a)), t.setData({
                log: a,
                my_num:e.data.my_num,
                one_num:e.data.one_num,
                two_num:e.data.two_num,
                all_num:e.data.all_num,
            });
        });
    },
    clicklevel: function(e) {
        var a = e.currentTarget.dataset.level;
        this.setData({
            level: a,
            log: [],
            p: 1,
            isover: !1
        }), t.loadContent();
    },
    onReachBottom: function() {
        console.log(this.data.isover);
        this.data.isover || (this.data.p += 1, t.loadContent());
    },
    onUnload: function() {},
    onHide: function() {},
    onShow: function() {},
    onShareAppMessage: function() {
        const appConfig = wx.getStorageSync("appConfig");
        return {
            title: appConfig.config.shareText,
            imageUrl: appConfig.config.shareImage,
            path: "/pages/index/index?parentId=" + wx.getStorageSync("userInfo").id
        };
    }
});
