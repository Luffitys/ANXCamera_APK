.class public Lcom/lguplus/Lgu5GNetworkManager$Callback;
.super Ljava/lang/Object;
.source "Lgu5GNetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lguplus/Lgu5GNetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public on5GAvailable()V
    .registers 3

    # getter for: Lcom/lguplus/Lgu5GNetworkManager;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lguplus/Lgu5GNetworkManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Callback on5GAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public on5GBearerAdded()V
    .registers 3

    # getter for: Lcom/lguplus/Lgu5GNetworkManager;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lguplus/Lgu5GNetworkManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Callback on5GBearerAdded"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public on5GBearerDeleted()V
    .registers 3

    # getter for: Lcom/lguplus/Lgu5GNetworkManager;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lguplus/Lgu5GNetworkManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Callback on5GBearerDeleted"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public on5GUnavailable()V
    .registers 3

    # getter for: Lcom/lguplus/Lgu5GNetworkManager;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lguplus/Lgu5GNetworkManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Callback on5GUnavailable"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
