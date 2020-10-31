.class public final synthetic Landroid/content/-$$Lambda$ClipboardManager$1$hQk8olbGAgUi4WWNG4ZuDZsM39s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/ClipboardManager$1;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ClipboardManager$1;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/-$$Lambda$ClipboardManager$1$hQk8olbGAgUi4WWNG4ZuDZsM39s;->f$0:Landroid/content/ClipboardManager$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/content/-$$Lambda$ClipboardManager$1$hQk8olbGAgUi4WWNG4ZuDZsM39s;->f$0:Landroid/content/ClipboardManager$1;

    invoke-virtual {v0}, Landroid/content/ClipboardManager$1;->lambda$dispatchPrimaryClipChanged$0$ClipboardManager$1()V

    return-void
.end method
