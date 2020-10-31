.class Lcom/miui/internal/vip/utils/AuthHttpRequest$AccountSdkLoader;
.super Ljava/lang/ClassLoader;
.source "AuthHttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/vip/utils/AuthHttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccountSdkLoader"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/vip/utils/AuthHttpRequest$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/miui/internal/vip/utils/AuthHttpRequest$AccountSdkLoader;-><init>()V

    return-void
.end method


# virtual methods
.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-super {p0, p1}, Ljava/lang/ClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    # getter for: Lcom/miui/internal/vip/utils/AuthHttpRequest;->AccountSdkDf:Ldalvik/system/DexFile;
    invoke-static {}, Lcom/miui/internal/vip/utils/AuthHttpRequest;->access$000()Ldalvik/system/DexFile;

    move-result-object v0

    if-eqz v0, :cond_17

    const-string v0, "com.xiaomi.accountsdk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    # getter for: Lcom/miui/internal/vip/utils/AuthHttpRequest;->AccountSdkDf:Ldalvik/system/DexFile;
    invoke-static {}, Lcom/miui/internal/vip/utils/AuthHttpRequest;->access$000()Ldalvik/system/DexFile;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    :cond_17
    invoke-super {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
