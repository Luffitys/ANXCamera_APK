.class public final synthetic Landroid/os/-$$Lambda$IncidentManager$AuthListener$1$VoPbrfU3RKoeruCLRzIQ8yeLsyQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/os/IncidentManager$AuthListener$1;


# direct methods
.method public synthetic constructor <init>(Landroid/os/IncidentManager$AuthListener$1;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/-$$Lambda$IncidentManager$AuthListener$1$VoPbrfU3RKoeruCLRzIQ8yeLsyQ;->f$0:Landroid/os/IncidentManager$AuthListener$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/os/-$$Lambda$IncidentManager$AuthListener$1$VoPbrfU3RKoeruCLRzIQ8yeLsyQ;->f$0:Landroid/os/IncidentManager$AuthListener$1;

    invoke-virtual {v0}, Landroid/os/IncidentManager$AuthListener$1;->lambda$onReportDenied$1$IncidentManager$AuthListener$1()V

    return-void
.end method
