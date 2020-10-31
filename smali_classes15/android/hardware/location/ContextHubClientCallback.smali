.class public Landroid/hardware/location/ContextHubClientCallback;
.super Ljava/lang/Object;
.source "ContextHubClientCallback.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHubReset(Landroid/hardware/location/ContextHubClient;)V
    .registers 2

    return-void
.end method

.method public onMessageFromNanoApp(Landroid/hardware/location/ContextHubClient;Landroid/hardware/location/NanoAppMessage;)V
    .registers 3

    return-void
.end method

.method public onNanoAppAborted(Landroid/hardware/location/ContextHubClient;JI)V
    .registers 5

    return-void
.end method

.method public onNanoAppDisabled(Landroid/hardware/location/ContextHubClient;J)V
    .registers 4

    return-void
.end method

.method public onNanoAppEnabled(Landroid/hardware/location/ContextHubClient;J)V
    .registers 4

    return-void
.end method

.method public onNanoAppLoaded(Landroid/hardware/location/ContextHubClient;J)V
    .registers 4

    return-void
.end method

.method public onNanoAppUnloaded(Landroid/hardware/location/ContextHubClient;J)V
    .registers 4

    return-void
.end method
