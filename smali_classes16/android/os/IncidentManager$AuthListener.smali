.class public Landroid/os/IncidentManager$AuthListener;
.super Ljava/lang/Object;
.source "IncidentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IncidentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthListener"
.end annotation


# instance fields
.field mBinder:Landroid/os/IIncidentAuthListener$Stub;

.field mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/IncidentManager$AuthListener$1;

    invoke-direct {v0, p0}, Landroid/os/IncidentManager$AuthListener$1;-><init>(Landroid/os/IncidentManager$AuthListener;)V

    iput-object v0, p0, Landroid/os/IncidentManager$AuthListener;->mBinder:Landroid/os/IIncidentAuthListener$Stub;

    return-void
.end method


# virtual methods
.method public onReportApproved()V
    .registers 1

    return-void
.end method

.method public onReportDenied()V
    .registers 1

    return-void
.end method
