.class public final synthetic Landroid/app/-$$Lambda$ActivityThread$7yWwCvhfDgOc1FXQL9FUcwCTz5Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/ViewRootImpl$ConfigChangedCallback;


# instance fields
.field public final synthetic f$0:Landroid/app/ActivityThread;


# direct methods
.method public synthetic constructor <init>(Landroid/app/ActivityThread;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/-$$Lambda$ActivityThread$7yWwCvhfDgOc1FXQL9FUcwCTz5Y;->f$0:Landroid/app/ActivityThread;

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    iget-object v0, p0, Landroid/app/-$$Lambda$ActivityThread$7yWwCvhfDgOc1FXQL9FUcwCTz5Y;->f$0:Landroid/app/ActivityThread;

    invoke-virtual {v0, p1}, Landroid/app/ActivityThread;->lambda$attach$3$ActivityThread(Landroid/content/res/Configuration;)V

    return-void
.end method
