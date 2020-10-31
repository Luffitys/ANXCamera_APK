.class public Landroid/app/servertransaction/PendingTransactionActions;
.super Ljava/lang/Object;
.source "PendingTransactionActions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/servertransaction/PendingTransactionActions$StopInfo;
    }
.end annotation


# instance fields
.field private mCallOnPostCreate:Z

.field private mOldState:Landroid/os/Bundle;

.field private mReportRelaunchToWM:Z

.field private mRestoreInstanceState:Z

.field private mStopInfo:Landroid/app/servertransaction/PendingTransactionActions$StopInfo;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Landroid/app/servertransaction/PendingTransactionActions;->clear()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/servertransaction/PendingTransactionActions;->mRestoreInstanceState:Z

    iput-boolean v0, p0, Landroid/app/servertransaction/PendingTransactionActions;->mCallOnPostCreate:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/servertransaction/PendingTransactionActions;->mOldState:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/app/servertransaction/PendingTransactionActions;->mStopInfo:Landroid/app/servertransaction/PendingTransactionActions$StopInfo;

    return-void
.end method

.method public getOldState()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/app/servertransaction/PendingTransactionActions;->mOldState:Landroid/os/Bundle;

    return-object v0
.end method

.method public getStopInfo()Landroid/app/servertransaction/PendingTransactionActions$StopInfo;
    .registers 2

    iget-object v0, p0, Landroid/app/servertransaction/PendingTransactionActions;->mStopInfo:Landroid/app/servertransaction/PendingTransactionActions$StopInfo;

    return-object v0
.end method

.method public setCallOnPostCreate(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/app/servertransaction/PendingTransactionActions;->mCallOnPostCreate:Z

    return-void
.end method

.method public setOldState(Landroid/os/Bundle;)V
    .registers 2

    iput-object p1, p0, Landroid/app/servertransaction/PendingTransactionActions;->mOldState:Landroid/os/Bundle;

    return-void
.end method

.method public setReportRelaunchToWindowManager(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/app/servertransaction/PendingTransactionActions;->mReportRelaunchToWM:Z

    return-void
.end method

.method public setRestoreInstanceState(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/app/servertransaction/PendingTransactionActions;->mRestoreInstanceState:Z

    return-void
.end method

.method public setStopInfo(Landroid/app/servertransaction/PendingTransactionActions$StopInfo;)V
    .registers 2

    iput-object p1, p0, Landroid/app/servertransaction/PendingTransactionActions;->mStopInfo:Landroid/app/servertransaction/PendingTransactionActions$StopInfo;

    return-void
.end method

.method public shouldCallOnPostCreate()Z
    .registers 2

    iget-boolean v0, p0, Landroid/app/servertransaction/PendingTransactionActions;->mCallOnPostCreate:Z

    return v0
.end method

.method public shouldReportRelaunchToWindowManager()Z
    .registers 2

    iget-boolean v0, p0, Landroid/app/servertransaction/PendingTransactionActions;->mReportRelaunchToWM:Z

    return v0
.end method

.method public shouldRestoreInstanceState()Z
    .registers 2

    iget-boolean v0, p0, Landroid/app/servertransaction/PendingTransactionActions;->mRestoreInstanceState:Z

    return v0
.end method
