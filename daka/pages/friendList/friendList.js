function e(e, t, o) {
    return t in e ? Object.defineProperty(e, t, {
        value: o,
        enumerable: !0,
        configurable: !0,
        writable: !0
    }) : e[t] = o, e;
}

function t(e) {
    return e && e.__esModule ? e : {
        default: e
    };
}

var o, i, n = function(e) {
    return e && e.__esModule ? e : {
        default: e
    };
}(require("../../utils/tools.js")), a = (getApp(), t(require("./modules/base-canvas-palette.js")),
t(require("../../utils/wx-promisify/wx-promisify"))), s = t(require("./modules/handle-create-img.js"));

(0, a.default)(wx.getSetting), Page((o = {
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
        index: 1,
        poster: "",
        is_poster: !1,
        show_poster: !1
    },
    onLoad: function(e) {
        i = this;
        wx.setNavigationBarTitle({
            title:'我的好友'
        });
        i.setData(wx.getStorageSync("appConfig"))
    },
    onReady: function() {
        var e = {
            action: "friend",
            contr: "my",
            token: wx.getStorageSync("token")
        };
        wx.showLoading({
            title: "加载中"
        }), n.default.request(e, function(e) {
            const appConfig = wx.getStorageSync("appConfig");
            i.setData(e.data);
            var t = null;
            wx.createInterstitialAd && appConfig.ads.interstitialAdId && ((t = wx.createInterstitialAd({
                adUnitId: appConfig.ads.interstitialAdId
            })).onLoad(function() {
                console.log("onLoad event emit");
            }), t.onError(function(e) {
                console.log("onError event emit", e);
            }), t.onClose(function(e) {
                console.log("onClose event emit", e);
            }), t.show().catch(function(e) {
                console.error(e);
            }));
        });
    },
    showShare: function() {},
    onUnload: function() {},
    onHide: function() {},
    onShow: function() {}
}, e(o, "showShare", function() {
    const appConfig = wx.getStorageSync("appConfig");
    const e = appConfig.config.posterBg;
    const userInfo = wx.getStorageSync("userInfo");
    if (this.data.poster) this.setData({
        show_poster: !0
    }); else {
        var t = [ {
            type: "image",
            url: e,
            css: {
                top: "0rpx",
                left: "0rpx",
                width: "540px",
                height: "960px",
                mode: "scaleToFill"
            }
        }, {
            type: "image",
            url: userInfo.avatarUrl||appConfig.config.defaultAvatar,
            css: {
                top: "250px",
                left: "200px",
                width: "140px",
                height: "140px",
                borderRadius: "70px",
                borderWidth: "1px",
                borderColor: "#ffffff"
            }
        }, {
            type: "image",
            url: appConfig.config.qrCode,
            css: {
                top: "655px",
                left: "185px",
                width: "170px",
                height: "170px",
                borderRadius: "85px",
                borderWidth: "1px",
                borderColor: "#ffffff"
            }
        } ];
        this.data.poster = {
            content: t
        }, console.log(t), i.setData({
            is_poster: !0
        }), wx.showLoading({
            title: "正在生成海报",
            mask: !0
        }), s.default.doCreateImg(this);
        try {
            getApp().sensors.track("XMClick", {
                ck_module: "保存海报",
                page: ""
            });
        } catch (e) {}
    }
}), e(o, "imgErr", function(e) {
    console.log(22222), i.setData({
        is_poster: !1
    }), s.default.createImgFail(e);
}), e(o, "hidePost", function() {
    i.setData({
        show_poster: !1
    });
}), e(o, "onImgOK", function(e) {
    console.log(e), console.log(33333333), wx.hideLoading(), i.setData({
        is_poster: !1,
        show_poster: !0,
        poster: e.detail.path
    });
}), e(o, "preservation", function() {
    wx.saveImageToPhotosAlbum({
        filePath: i.data.poster,
        success: function(e) {
            wx.showToast({
                title: "保存图片成功！",
                icon: "none"
            });
        },
        fail: function(e) {}
    });
}), e(o, "onShareAppMessage", function() {
    const appConfig = wx.getStorageSync("appConfig");
    return {
        title: appConfig.config.shareText,
        imageUrl: appConfig.config.shareImage,
        path: "/pages/index/index?parentId=" + wx.getStorageSync("userInfo").id
    };
}), o));
