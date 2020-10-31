.class public Landroid/telecom/CallScreeningService$CallResponse$Builder;
.super Ljava/lang/Object;
.source "CallScreeningService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/CallScreeningService$CallResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mShouldDisallowCall:Z

.field private mShouldRejectCall:Z

.field private mShouldScreenCallViaAudioProcessing:Z

.field private mShouldSilenceCall:Z

.field private mShouldSkipCallLog:Z

.field private mShouldSkipNotification:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/telecom/CallScreeningService$CallResponse;
    .registers 10

    new-instance v8, Landroid/telecom/CallScreeningService$CallResponse;

    iget-boolean v1, p0, Landroid/telecom/CallScreeningService$CallResponse$Builder;->mShouldDisallowCall:Z

    iget-boolean v2, p0, Landroid/telecom/CallScreeningService$CallResponse$Builder;->mShouldRejectCall:Z

    iget-boolean v3, p0, Landroid/telecom/CallScreeningService$CallResponse$Builder;->mShouldSilenceCall:Z

    iget-boolean v4, p0, Landroid/telecom/CallScreeningService$CallResponse$Builder;->mShouldSkipCallLog:Z

    iget-boolean v5, p0, Landroid/telecom/CallScreeningService$CallResponse$Builder;->mShouldSkipNotification:Z

    iget-boolean v6, p0, Landroid/telecom/CallScreeningService$CallResponse$Builder;->mShouldScreenCallViaAudioProcessing:Z

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/telecom/CallScreeningService$CallResponse;-><init>(ZZZZZZLandroid/telecom/CallScreeningService$1;)V

    return-object v8
.end method

.method public setDisallowCall(Z)Landroid/telecom/CallScreeningService$CallResponse$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/telecom/CallScreeningService$CallResponse$Builder;->mShouldDisallowCall:Z

    return-object p0
.end method

.method public setRejectCall(Z)Landroid/telecom/CallScreeningService$CallResponse$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/telecom/CallScreeningService$CallResponse$Builder;->mShouldRejectCall:Z

    return-object p0
.end method

.method public setShouldScreenCallViaAudioProcessing(Z)Landroid/telecom/CallScreeningService$CallResponse$Builder;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iput-boolean p1, p0, Landroid/telecom/CallScreeningService$CallResponse$Builder;->mShouldScreenCallViaAudioProcessing:Z

    return-object p0
.end method

.method public setSilenceCall(Z)Landroid/telecom/CallScreeningService$CallResponse$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/telecom/CallScreeningService$CallResponse$Builder;->mShouldSilenceCall:Z

    return-object p0
.end method

.method public setSkipCallLog(Z)Landroid/telecom/CallScreeningService$CallResponse$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/telecom/CallScreeningService$CallResponse$Builder;->mShouldSkipCallLog:Z

    return-object p0
.end method

.method public setSkipNotification(Z)Landroid/telecom/CallScreeningService$CallResponse$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/telecom/CallScreeningService$CallResponse$Builder;->mShouldSkipNotification:Z

    return-object p0
.end method
