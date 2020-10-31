.class public Lcom/miui/internal/vip/utils/FileServerUtil;
.super Ljava/lang/Object;
.source "FileServerUtil.java"


# static fields
.field static final MARKET_FILE:Ljava/util/regex/Pattern;

.field static final SPECIAL_DIR:[Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "FileServerUtil"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "MiVip/"

    const-string v1, "AppStore/"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/vip/utils/FileServerUtil;->SPECIAL_DIR:[Ljava/lang/String;

    const-string v0, "^[0-9a-z]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/vip/utils/FileServerUtil;->MARKET_FILE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUrlName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1d

    :cond_1b
    const-string v1, ""

    :goto_1d
    return-object v1
.end method

.method public static indexOfSpecialDir(Ljava/lang/String;)I
    .registers 6

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    sget-object v1, Lcom/miui/internal/vip/utils/FileServerUtil;->SPECIAL_DIR:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v2, :cond_16

    aget-object v4, v1, v3

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_13

    goto :goto_16

    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_16
    :goto_16
    return v0
.end method

.method public static isFileOnMarketServer(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Lcom/miui/internal/vip/utils/FileServerUtil;->getUrlName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/miui/internal/vip/utils/FileServerUtil;->indexOfSpecialDir(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_18

    sget-object v1, Lcom/miui/internal/vip/utils/FileServerUtil;->MARKET_FILE:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    return v1
.end method
