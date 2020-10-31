.class public final synthetic Landroid/os/-$$Lambda$IncidentManager$yGukxCMuLDmoRlrh5jGUmq5BOTk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Landroid/os/IncidentManager;


# direct methods
.method public synthetic constructor <init>(Landroid/os/IncidentManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/-$$Lambda$IncidentManager$yGukxCMuLDmoRlrh5jGUmq5BOTk;->f$0:Landroid/os/IncidentManager;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 2

    iget-object v0, p0, Landroid/os/-$$Lambda$IncidentManager$yGukxCMuLDmoRlrh5jGUmq5BOTk;->f$0:Landroid/os/IncidentManager;

    invoke-virtual {v0}, Landroid/os/IncidentManager;->lambda$getIIncidentManagerLocked$0$IncidentManager()V

    return-void
.end method
