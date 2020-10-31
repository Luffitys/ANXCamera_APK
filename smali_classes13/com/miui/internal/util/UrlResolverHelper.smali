.class public Lcom/miui/internal/util/UrlResolverHelper;
.super Ljava/lang/Object;
.source "UrlResolverHelper.java"


# static fields
.field private static final BROWSER_HTTPS_SCHEME:Ljava/lang/String; = "mihttps"

.field private static final BROWSER_HTTP_SCHEME:Ljava/lang/String; = "mihttp"

.field private static final BROWSER_SCHEME_PREFIX:Ljava/lang/String; = "mi"

.field private static final FALLBACK_PARAMETER:Ljava/lang/String; = "mifb"

.field private static final HTTPS_SCHEME:Ljava/lang/String; = "https"

.field private static final HTTP_SCHEME:Ljava/lang/String; = "http"

.field private static final MI_LIST:[Ljava/lang/String;

.field private static final WHITE_LIST:[Ljava/lang/String;

.field private static final WHITE_PACKAGE_LIST:[Ljava/lang/String;

.field private static sBrowserFallbackSchemeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sFallbackSchemeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 28

    const-string v0, ".xiaomi.com"

    const-string v1, ".mi.com"

    const-string v2, ".miui.com"

    const-string v3, ".mipay.com"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/util/UrlResolverHelper;->MI_LIST:[Ljava/lang/String;

    const-string v0, ".duokan.com"

    const-string v1, ".duokanbox.com"

    const-string v2, ".mijiayoupin.com"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/util/UrlResolverHelper;->WHITE_LIST:[Ljava/lang/String;

    const-string v1, "com.xiaomi.channel"

    const-string v2, "com.duokan.reader"

    const-string v3, "com.duokan.hdreader"

    const-string v4, "com.duokan.fiction"

    const-string v5, "com.duokan.free"

    const-string v6, "com.xiaomi.router"

    const-string v7, "com.xiaomi.smarthome"

    const-string v8, "com.xiaomi.o2o"

    const-string v9, "com.xiaomi.shop"

    const-string v10, "com.xiaomi.jr"

    const-string v11, "com.xiaomi.jr.security"

    const-string v12, "com.xiaomi.mifisecurity"

    const-string v13, "com.xiaomi.loan"

    const-string v14, "com.xiaomi.loanx"

    const-string v15, "com.mi.credit.in"

    const-string v16, "com.mi.credit.id"

    const-string v17, "com.miui.miuibbs"

    const-string v18, "com.wali.live"

    const-string v19, "com.mi.live"

    const-string v20, "com.xiaomi.ab"

    const-string v21, "com.mfashiongallery.emag"

    const-string v22, "com.xiaomi.pass"

    const-string v23, "com.xiaomi.youpin"

    const-string v24, "com.mi.liveassistant"

    const-string v25, "com.xiangkan.android"

    const-string v26, "com.xiaomi.gamecenter"

    const-string v27, "com.xiaomi.vipaccount"

    filled-new-array/range {v1 .. v27}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/util/UrlResolverHelper;->WHITE_PACKAGE_LIST:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/miui/internal/util/UrlResolverHelper;->sBrowserFallbackSchemeSet:Ljava/util/Set;

    const-string v1, "mihttp"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/internal/util/UrlResolverHelper;->sBrowserFallbackSchemeSet:Ljava/util/Set;

    const-string v1, "mihttps"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/miui/internal/util/UrlResolverHelper;->sFallbackSchemeSet:Ljava/util/Set;

    const-string v1, "http"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/internal/util/UrlResolverHelper;->sFallbackSchemeSet:Ljava/util/Set;

    const-string v1, "https"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/internal/util/UrlResolverHelper;->sFallbackSchemeSet:Ljava/util/Set;

    sget-object v1, Lcom/miui/internal/util/UrlResolverHelper;->sBrowserFallbackSchemeSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBrowserFallbackUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 2

    const-string v0, "mi"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getFallbackParameter(Landroid/net/Uri;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/miui/internal/util/UrlResolverHelper;->getFallbackParameter(Landroid/net/Uri;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/miui/internal/util/UrlResolverHelper;->sFallbackSchemeSet:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    return-object v0

    :cond_19
    return-object v1
.end method

.method private static getFallbackParameter(Landroid/net/Uri;ILjava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mifb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_f

    const-string v1, ""

    goto :goto_13

    :cond_f
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1, v0}, Lcom/miui/internal/util/UrlResolverHelper;->getFallbackParameter(Landroid/net/Uri;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_27
    return-object p2
.end method

.method public static isBrowserFallbackScheme(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Lcom/miui/internal/util/UrlResolverHelper;->sBrowserFallbackSchemeSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMiHost(Ljava/lang/String;)Z
    .registers 8

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    sget-object v0, Lcom/miui/internal/util/UrlResolverHelper;->MI_LIST:[Ljava/lang/String;

    array-length v2, v0

    move v3, v1

    :goto_c
    const/4 v4, 0x1

    if-ge v3, v2, :cond_1b

    aget-object v5, v0, v3

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_18

    return v4

    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_1b
    sget-object v0, Lcom/miui/internal/util/UrlResolverHelper;->WHITE_LIST:[Ljava/lang/String;

    array-length v2, v0

    move v3, v1

    :goto_1f
    if-ge v3, v2, :cond_2d

    aget-object v5, v0, v3

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2a

    return v4

    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_2d
    return v1
.end method

.method public static isMiUrl(Ljava/lang/String;)Z
    .registers 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "https"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    return v1

    :cond_25
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/internal/util/UrlResolverHelper;->isMiHost(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isWhiteListPackage(Ljava/lang/String;)Z
    .registers 7

    sget-object v0, Lcom/miui/internal/util/UrlResolverHelper;->WHITE_PACKAGE_LIST:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_14

    aget-object v4, v0, v3

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    const/4 v0, 0x1

    return v0

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_14
    return v2
.end method
