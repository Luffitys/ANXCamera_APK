.class Landroid/widget/Editor$4;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor;->showEmailPopupWindow(Landroid/widget/TextPatternUtil$EmailInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method constructor <init>(Landroid/widget/Editor;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/Editor$4;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Landroid/widget/Editor$4;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mEmailPopupWindow:Landroid/widget/Editor$EmailAddPopupWindow;
    invoke-static {v0}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/Editor$EmailAddPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Editor$EmailAddPopupWindow;->show()V

    return-void
.end method
