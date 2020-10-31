.class Lcom/android/internal/widget/MiuiDecorCaptionView$1;
.super Ljava/lang/Object;
.source "MiuiDecorCaptionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/MiuiDecorCaptionView;->setPhoneWindow(Lcom/android/internal/policy/PhoneWindow;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/MiuiDecorCaptionView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$1;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$1;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    # invokes: Lcom/android/internal/widget/MiuiDecorCaptionView;->updateBorderReminder()V
    invoke-static {v0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->access$000(Lcom/android/internal/widget/MiuiDecorCaptionView;)V

    return-void
.end method
