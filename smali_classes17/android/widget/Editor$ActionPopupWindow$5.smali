.class Landroid/widget/Editor$ActionPopupWindow$5;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor$ActionPopupWindow;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$ActionPopupWindow;


# direct methods
.method constructor <init>(Landroid/widget/Editor$ActionPopupWindow;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/Editor$ActionPopupWindow$5;->this$1:Landroid/widget/Editor$ActionPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow$5;->this$1:Landroid/widget/Editor$ActionPopupWindow;

    # invokes: Landroid/widget/Editor$ActionPopupWindow;->startAddPhraseActivity()V
    invoke-static {v0}, Landroid/widget/Editor$ActionPopupWindow;->access$5800(Landroid/widget/Editor$ActionPopupWindow;)V

    return-void
.end method
