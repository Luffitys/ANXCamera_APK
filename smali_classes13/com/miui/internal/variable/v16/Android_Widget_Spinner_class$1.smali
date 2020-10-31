.class Lcom/miui/internal/variable/v16/Android_Widget_Spinner_class$1;
.super Ljava/lang/Object;
.source "Android_Widget_Spinner_class.java"

# interfaces
.implements Lcom/miui/internal/variable/api/v29/Android_Widget_Spinner$Interface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/variable/v16/Android_Widget_Spinner_class;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/variable/v16/Android_Widget_Spinner_class;


# direct methods
.method constructor <init>(Lcom/miui/internal/variable/v16/Android_Widget_Spinner_class;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/variable/v16/Android_Widget_Spinner_class$1;->this$0:Lcom/miui/internal/variable/v16/Android_Widget_Spinner_class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setPrompt(Landroid/widget/Spinner;Ljava/lang/CharSequence;)V
    .registers 6

    iget-object v0, p0, Lcom/miui/internal/variable/v16/Android_Widget_Spinner_class$1;->this$0:Lcom/miui/internal/variable/v16/Android_Widget_Spinner_class;

    const-wide/16 v1, 0x0

    # invokes: Lcom/miui/internal/variable/v16/Android_Widget_Spinner_class;->handleSetPrompt(JLandroid/widget/Spinner;Ljava/lang/CharSequence;)V
    invoke-static {v0, v1, v2, p1, p2}, Lcom/miui/internal/variable/v16/Android_Widget_Spinner_class;->access$000(Lcom/miui/internal/variable/v16/Android_Widget_Spinner_class;JLandroid/widget/Spinner;Ljava/lang/CharSequence;)V

    return-void
.end method
