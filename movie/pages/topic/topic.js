(global.webpackJsonp = global.webpackJsonp || []).push([ [ "pages/topic/topic" ], {
    "848c": function(t, n, e) {
        e.d(n, "b", function() {
            return o;
        }), e.d(n, "c", function() {
            return a;
        }), e.d(n, "a", function() {
            return i;
        });
        var i = {
            uniBar: function() {
                return Promise.all([ e.e("common/vendor"), e.e("components/uni-bar/uni-bar") ]).then(e.bind(null, "9a28"));
            },
            narBar: function() {
                return e.e("components/narBar/narBar").then(e.bind(null, "0b0a"));
            }
        }, o = function() {
            var t = this;
            t.$createElement;
            t._self._c;
        }, a = [];
    },
    a4e6: function(t, n, e) {
        (function(t) {
            function n(t) {
                return t && t.__esModule ? t : {
                    default: t
                };
            }
            e("3079"), n(e("66fd")), t(n(e("edb2")).default);
        }).call(this, e("543d").createPage);
    },
    b9bf: function(t, n, e) {
        e.r(n);
        var i = e("c32f"), o = e.n(i);
        for (var a in i) "default" !== a && function(t) {
            e.d(n, t, function() {
                return i[t];
            });
        }(a);
        n.default = o.a;
    },
    c32f: function(t, n, e) {
        (function(t) {
            Object.defineProperty(n, "__esModule", {
                value: !0
            }), n.default = void 0;
            var e = getApp().globalData, i = {
                data: function() {
                    return {
                        tags: [],
                        page: 1,
                        wxAdId: [],
                        theme: e.$theme,
                        topicList: [],
                        loadingText: "加载中...",
                        noLoading: !1,
                        tagIndex: 0,
                        getTag: "全部"
                    };
                },
                onLoad: function() {
                    e.$config.topic.tags && (this.tags = JSON.parse(e.$config.topic.tags)), this.refresh(this.getTag);
                },
                onShow: function() {
                    this.theme = e.$theme;
                },
                computed: {},
                onReachBottom: function() {
                    var t = this;
                    this.noLoading || (t.loadingText = "加载中...", t.noLoading = !0, setTimeout(function() {
                        t.page++, t.refresh(t.getTag);
                    }, 1500));
                },
                onPullDownRefresh: function() {
                    this.page = 1, this.topicList = [], this.refresh(this.getTag);
                },
                methods: {
                    refresh: function(n) {
                        var e = this;
                        this.loadingText = "加载中...";
                        var i = this.md5("10" + this.page + "App.Topic.GetTopicAll" + n), o = this.cjurl + "wxApi/public/?service=App.Topic.GetTopicAll&page=" + this.page + "&tags=" + n + "&limit=10&sign=" + i;
                        this.api.apiRequest(o).then(function(n) {
                            e.loadingText = "加载完成", 200 == n.Code && void 0 != n.Data.length ? (e.noLoading = !1, 
                            e.topicList.length < 1 ? e.topicList = n.Data : e.topicList = e.topicList.concat(n.Data)) : e.loadingText = "我是有底线的", 
                            t.stopPullDownRefresh();
                        });
                    },
                    tagClick: function(t, n) {
                        n != this.tagIndex && (this.tagIndex = n, this.page = 1, this.getTag = t, this.topicList = [], 
                        this.refresh(this.getTag));
                    },
                    pageScrollTo: function() {
                        t.pageScrollTo({
                            scrollTop: 0,
                            duration: 300
                        });
                    },
                    topicTab: function(n) {
                        t.navigateTo({
                            url: "../art/art?id=" + n
                        });
                    }
                }
            };
            n.default = i;
        }).call(this, e("543d").default);
    },
    d0cb: function(t, n, e) {
        var i = e("deda");
        e.n(i).a;
    },
    deda: function(t, n, e) {},
    edb2: function(t, n, e) {
        e.r(n);
        var i = e("848c"), o = e("b9bf");
        for (var a in o) "default" !== a && function(t) {
            e.d(n, t, function() {
                return o[t];
            });
        }(a);
        e("d0cb");
        var c = e("f0c5"), r = Object(c.a)(o.default, i.b, i.c, !1, null, null, null, !1, i.a, void 0);
        n.default = r.exports;
    }
}, [ [ "a4e6", "common/runtime", "common/vendor" ] ] ]);