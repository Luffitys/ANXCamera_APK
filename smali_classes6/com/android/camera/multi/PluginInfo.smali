.class public Lcom/android/camera/multi/PluginInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/resource/BaseResourceDownloadable;


# instance fields
.field public resourceItem:Lcom/android/camera/resource/BaseResourceItem;

.field public sha1Base16:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/multi/PluginInfo;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCurrentState()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/multi/PluginInfo;->url:Ljava/lang/String;

    return-object p0
.end method

.method public setState(I)V
    .locals 0

    return-void
.end method
