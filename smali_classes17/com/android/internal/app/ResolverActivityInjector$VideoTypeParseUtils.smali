.class Lcom/android/internal/app/ResolverActivityInjector$VideoTypeParseUtils;
.super Ljava/lang/Object;
.source "ResolverActivityInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivityInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VideoTypeParseUtils"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverActivityInjector$VideoTypeParseUtils$Holder;
    }
.end annotation


# static fields
.field public static final VIDEO_EXTENSIONS:[Ljava/lang/String;

.field private static final mHashVideo:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 46

    const-string v0, "3G2"

    const-string v1, "3GP"

    const-string v2, "3GP2"

    const-string v3, "3GPP"

    const-string v4, "3GPP2"

    const-string v5, "AVI"

    const-string v6, "AVB"

    const-string v7, "ASF"

    const-string v8, "ASX"

    const-string v9, "AVS"

    const-string v10, "BOX"

    const-string v11, "DIVX"

    const-string v12, "FLV"

    const-string v13, "F4V"

    const-string v14, "M2V"

    const-string v15, "M4V"

    const-string v16, "MKV"

    const-string v17, "MOV"

    const-string v18, "MP4"

    const-string v19, "MPG"

    const-string v20, "MPEG"

    const-string v21, "NDIVX"

    const-string v22, "RA"

    const-string v23, "RM"

    const-string v24, "RAM"

    const-string v25, "RMVB"

    const-string v26, "TS"

    const-string v27, "V8"

    const-string v28, "VOB"

    const-string v29, "WMV"

    const-string v30, "XVID"

    const-string v31, "M4A"

    const-string v32, "MJ2"

    const-string v33, "MPE"

    const-string v34, "M1V"

    const-string v35, "MP2"

    const-string v36, "MOD"

    const-string v37, "QT"

    const-string v38, "PFV"

    const-string v39, "WEBM"

    const-string v40, "DAT"

    const-string v41, "VSTREAM"

    const-string v42, "DV"

    const-string v43, "H264"

    const-string v44, "H261"

    const-string v45, "H263"

    filled-new-array/range {v0 .. v45}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/ResolverActivityInjector$VideoTypeParseUtils;->VIDEO_EXTENSIONS:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/android/internal/app/ResolverActivityInjector$VideoTypeParseUtils;->VIDEO_EXTENSIONS:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/internal/app/ResolverActivityInjector$VideoTypeParseUtils;->mHashVideo:Ljava/util/HashSet;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/app/ResolverActivityInjector$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivityInjector$VideoTypeParseUtils;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/internal/app/ResolverActivityInjector$VideoTypeParseUtils;
    .registers 1

    # getter for: Lcom/android/internal/app/ResolverActivityInjector$VideoTypeParseUtils$Holder;->INSTANCE:Lcom/android/internal/app/ResolverActivityInjector$VideoTypeParseUtils;
    invoke-static {}, Lcom/android/internal/app/ResolverActivityInjector$VideoTypeParseUtils$Holder;->access$700()Lcom/android/internal/app/ResolverActivityInjector$VideoTypeParseUtils;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public shouldSystemVideoCanResolve(Landroid/app/Activity;)Z
    .registers 12

    const-string v0, "."

    const/4 v1, 0x0

    if-nez p1, :cond_6

    return v1

    :cond_6
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_6d

    :try_start_c
    invoke-virtual {v2, p1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_21

    const-string/jumbo v4, "video"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_21

    return v5

    :cond_21
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_68

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_32

    goto :goto_68

    :cond_32
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_67

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_67

    invoke-virtual {v7, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v5

    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sget-object v8, Lcom/android/internal/app/ResolverActivityInjector$VideoTypeParseUtils;->mHashVideo:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_64} :catch_69

    if-eqz v8, :cond_67

    return v5

    :cond_67
    goto :goto_6d

    :cond_68
    :goto_68
    return v1

    :catch_69
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6d
    :goto_6d
    return v1
.end method
