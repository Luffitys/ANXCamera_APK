.class public final synthetic Landroid/os/-$$Lambda$BugreportManager$DumpstateListener$XpZbAM9CYGe3tPOak0Nw-HdFQ8I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/os/BugreportManager$DumpstateListener;


# direct methods
.method public synthetic constructor <init>(Landroid/os/BugreportManager$DumpstateListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/-$$Lambda$BugreportManager$DumpstateListener$XpZbAM9CYGe3tPOak0Nw-HdFQ8I;->f$0:Landroid/os/BugreportManager$DumpstateListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/os/-$$Lambda$BugreportManager$DumpstateListener$XpZbAM9CYGe3tPOak0Nw-HdFQ8I;->f$0:Landroid/os/BugreportManager$DumpstateListener;

    invoke-virtual {v0}, Landroid/os/BugreportManager$DumpstateListener;->lambda$onFinished$2$BugreportManager$DumpstateListener()V

    return-void
.end method
