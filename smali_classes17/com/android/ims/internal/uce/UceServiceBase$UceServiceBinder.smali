.class final Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;
.super Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;
.source "UceServiceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/uce/UceServiceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UceServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ims/internal/uce/UceServiceBase;


# direct methods
.method private constructor <init>(Lcom/android/ims/internal/uce/UceServiceBase;)V
    .registers 2

    iput-object p1, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    invoke-direct {p0}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ims/internal/uce/UceServiceBase;Lcom/android/ims/internal/uce/UceServiceBase$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;-><init>(Lcom/android/ims/internal/uce/UceServiceBase;)V

    return-void
.end method


# virtual methods
.method public createOptionsService(Lcom/android/ims/internal/uce/options/IOptionsListener;Lcom/android/ims/internal/uce/common/UceLong;)I
    .registers 4

    iget-object v0, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/internal/uce/UceServiceBase;->onCreateOptionsService(Lcom/android/ims/internal/uce/options/IOptionsListener;Lcom/android/ims/internal/uce/common/UceLong;)I

    move-result v0

    return v0
.end method

.method public createOptionsServiceForSubscription(Lcom/android/ims/internal/uce/options/IOptionsListener;Lcom/android/ims/internal/uce/common/UceLong;Ljava/lang/String;)I
    .registers 5

    iget-object v0, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/ims/internal/uce/UceServiceBase;->onCreateOptionsService(Lcom/android/ims/internal/uce/options/IOptionsListener;Lcom/android/ims/internal/uce/common/UceLong;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public createPresenceService(Lcom/android/ims/internal/uce/presence/IPresenceListener;Lcom/android/ims/internal/uce/common/UceLong;)I
    .registers 4

    iget-object v0, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/internal/uce/UceServiceBase;->onCreatePresService(Lcom/android/ims/internal/uce/presence/IPresenceListener;Lcom/android/ims/internal/uce/common/UceLong;)I

    move-result v0

    return v0
.end method

.method public createPresenceServiceForSubscription(Lcom/android/ims/internal/uce/presence/IPresenceListener;Lcom/android/ims/internal/uce/common/UceLong;Ljava/lang/String;)I
    .registers 5

    iget-object v0, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/ims/internal/uce/UceServiceBase;->onCreatePresService(Lcom/android/ims/internal/uce/presence/IPresenceListener;Lcom/android/ims/internal/uce/common/UceLong;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public destroyOptionsService(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    invoke-virtual {v0, p1}, Lcom/android/ims/internal/uce/UceServiceBase;->onDestroyOptionsService(I)V

    return-void
.end method

.method public destroyPresenceService(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    invoke-virtual {v0, p1}, Lcom/android/ims/internal/uce/UceServiceBase;->onDestroyPresService(I)V

    return-void
.end method

.method public getOptionsService()Lcom/android/ims/internal/uce/options/IOptionsService;
    .registers 2

    iget-object v0, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    invoke-virtual {v0}, Lcom/android/ims/internal/uce/UceServiceBase;->onGetOptionsService()Lcom/android/ims/internal/uce/options/IOptionsService;

    move-result-object v0

    return-object v0
.end method

.method public getOptionsServiceForSubscription(Ljava/lang/String;)Lcom/android/ims/internal/uce/options/IOptionsService;
    .registers 3

    iget-object v0, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    invoke-virtual {v0, p1}, Lcom/android/ims/internal/uce/UceServiceBase;->onGetOptionsService(Ljava/lang/String;)Lcom/android/ims/internal/uce/options/IOptionsService;

    move-result-object v0

    return-object v0
.end method

.method public getPresenceService()Lcom/android/ims/internal/uce/presence/IPresenceService;
    .registers 2

    iget-object v0, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    invoke-virtual {v0}, Lcom/android/ims/internal/uce/UceServiceBase;->onGetPresenceService()Lcom/android/ims/internal/uce/presence/IPresenceService;

    move-result-object v0

    return-object v0
.end method

.method public getPresenceServiceForSubscription(Ljava/lang/String;)Lcom/android/ims/internal/uce/presence/IPresenceService;
    .registers 3

    iget-object v0, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    invoke-virtual {v0, p1}, Lcom/android/ims/internal/uce/UceServiceBase;->onGetPresenceService(Ljava/lang/String;)Lcom/android/ims/internal/uce/presence/IPresenceService;

    move-result-object v0

    return-object v0
.end method

.method public getServiceStatus()Z
    .registers 2

    iget-object v0, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    invoke-virtual {v0}, Lcom/android/ims/internal/uce/UceServiceBase;->onGetServiceStatus()Z

    move-result v0

    return v0
.end method

.method public isServiceStarted()Z
    .registers 2

    iget-object v0, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    invoke-virtual {v0}, Lcom/android/ims/internal/uce/UceServiceBase;->onIsServiceStarted()Z

    move-result v0

    return v0
.end method

.method public startService(Lcom/android/ims/internal/uce/uceservice/IUceListener;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    invoke-virtual {v0, p1}, Lcom/android/ims/internal/uce/UceServiceBase;->onServiceStart(Lcom/android/ims/internal/uce/uceservice/IUceListener;)Z

    move-result v0

    return v0
.end method

.method public stopService()Z
    .registers 2

    iget-object v0, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    invoke-virtual {v0}, Lcom/android/ims/internal/uce/UceServiceBase;->onStopService()Z

    move-result v0

    return v0
.end method
