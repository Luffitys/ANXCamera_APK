.class Landroid/widget/Editor$InsertionPointCursorController$1;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor$InsertionPointCursorController;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$InsertionPointCursorController;


# direct methods
.method constructor <init>(Landroid/widget/Editor$InsertionPointCursorController;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/Editor$InsertionPointCursorController$1;->this$1:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController$1;->this$1:Landroid/widget/Editor$InsertionPointCursorController;

    iget-object v0, v0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->startInsertionActionMode()V

    return-void
.end method
