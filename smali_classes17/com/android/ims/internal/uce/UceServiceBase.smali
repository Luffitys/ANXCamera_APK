.class public abstract Lcom/android/ims/internal/uce/UceServiceBase;
.super Ljava/lang/Object;
.source "UceServiceBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;
    }
.end annotation


# instance fields
.field private mBinder:Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBinder()Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;
    .registers 3

    iget-object v0, p0, Lcom/android/ims/internal/uce/UceServiceBase;->mBinder:Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;

    if-nez v0, :cond_c

    new-instance v0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;-><init>(Lcom/android/ims/internal/uce/UceServiceBase;Lcom/android/ims/internal/uce/UceServiceBase$1;)V

    iput-object v0, p0, Lcom/android/ims/internal/uce/UceServiceBase;->mBinder:Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;

    :cond_c
    iget-object v0, p0, Lcom/android/ims/internal/uce/UceServiceBase;->mBinder:Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;

    return-object v0
.end method

.method protected onCreateOptionsService(Lcom/android/ims/internal/uce/options/IOptionsListener;Lcom/android/ims/internal/uce/common/UceLong;)I
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method protected onCreateOptionsService(Lcom/android/ims/internal/uce/options/IOptionsListener;Lcom/android/ims/internal/uce/common/UceLong;Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method protected onCreatePresService(Lcom/android/ims/internal/uce/presence/IPresenceListener;Lcom/android/ims/internal/uce/common/UceLong;)I
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method protected onCreatePresService(Lcom/android/ims/internal/uce/presence/IPresenceListener;Lcom/android/ims/internal/uce/common/UceLong;Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method protected onDestroyOptionsService(I)V
    .registers 2

    return-void
.end method

.method protected onDestroyPresService(I)V
    .registers 2

    return-void
.end method

.method protected onGetOptionsService()Lcom/android/ims/internal/uce/options/IOptionsService;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onGetOptionsService(Ljava/lang/String;)Lcom/android/ims/internal/uce/options/IOptionsService;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onGetPresenceService()Lcom/android/ims/internal/uce/presence/IPresenceService;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onGetPresenceService(Ljava/lang/String;)Lcom/android/ims/internal/uce/presence/IPresenceService;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onGetServiceStatus()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected onIsServiceStarted()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected onServiceStart(Lcom/android/ims/internal/uce/uceservice/IUceListener;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method protected onStopService()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
