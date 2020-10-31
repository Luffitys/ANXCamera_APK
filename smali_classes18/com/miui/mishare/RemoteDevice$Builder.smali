.class public final Lcom/miui/mishare/RemoteDevice$Builder;
.super Ljava/lang/Object;
.source "RemoteDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/mishare/RemoteDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mDeviceId:Ljava/lang/String;

.field private mExtras:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/miui/mishare/RemoteDevice;
    .registers 5

    new-instance v0, Lcom/miui/mishare/RemoteDevice;

    iget-object v1, p0, Lcom/miui/mishare/RemoteDevice$Builder;->mDeviceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/mishare/RemoteDevice$Builder;->mExtras:Landroid/os/Bundle;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/mishare/RemoteDevice;-><init>(Ljava/lang/String;Landroid/os/Bundle;Lcom/miui/mishare/RemoteDevice$1;)V

    return-object v0
.end method

.method public putExtras(Landroid/os/Bundle;)Lcom/miui/mishare/RemoteDevice$Builder;
    .registers 2

    iput-object p1, p0, Lcom/miui/mishare/RemoteDevice$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/miui/mishare/RemoteDevice$Builder;
    .registers 2

    iput-object p1, p0, Lcom/miui/mishare/RemoteDevice$Builder;->mDeviceId:Ljava/lang/String;

    return-object p0
.end method
