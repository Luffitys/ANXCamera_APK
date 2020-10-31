.class public Lmiui/view/menu/ContextMenuDialog;
.super Ljava/lang/Object;
.source "ContextMenuDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/view/menu/ContextMenuDialog$ContextMenuBuilder;
    }
.end annotation


# instance fields
.field private mBuilder:Lmiui/view/menu/ContextMenuDialog$ContextMenuBuilder;

.field private final mContext:Landroid/content/Context;

.field private final mMenuRunnables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/view/menu/ContextMenuDialog;->mMenuRunnables:Ljava/util/List;

    iput-object p1, p0, Lmiui/view/menu/ContextMenuDialog;->mContext:Landroid/content/Context;

    new-instance v0, Lmiui/view/menu/ContextMenuDialog$ContextMenuBuilder;

    iget-object v1, p0, Lmiui/view/menu/ContextMenuDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiui/view/menu/ContextMenuDialog$ContextMenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/view/menu/ContextMenuDialog;->mBuilder:Lmiui/view/menu/ContextMenuDialog$ContextMenuBuilder;

    new-instance v1, Lmiui/view/menu/ContextMenuDialog$1;

    invoke-direct {v1, p0}, Lmiui/view/menu/ContextMenuDialog$1;-><init>(Lmiui/view/menu/ContextMenuDialog;)V

    invoke-virtual {v0, v1}, Lmiui/view/menu/ContextMenuDialog$ContextMenuBuilder;->setCallback(Lcom/miui/internal/view/menu/MenuBuilder$Callback;)V

    return-void
.end method

.method static synthetic access$000(Lmiui/view/menu/ContextMenuDialog;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lmiui/view/menu/ContextMenuDialog;->mMenuRunnables:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public addMenuItem(ILjava/lang/Runnable;)V
    .registers 4

    iget-object v0, p0, Lmiui/view/menu/ContextMenuDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lmiui/view/menu/ContextMenuDialog;->addMenuItem(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public addMenuItem(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 6

    iget-object v0, p0, Lmiui/view/menu/ContextMenuDialog;->mBuilder:Lmiui/view/menu/ContextMenuDialog$ContextMenuBuilder;

    iget-object v1, p0, Lmiui/view/menu/ContextMenuDialog;->mMenuRunnables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, p1}, Lmiui/view/menu/ContextMenuDialog$ContextMenuBuilder;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    iget-object v0, p0, Lmiui/view/menu/ContextMenuDialog;->mMenuRunnables:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setIcon(I)V
    .registers 3

    iget-object v0, p0, Lmiui/view/menu/ContextMenuDialog;->mBuilder:Lmiui/view/menu/ContextMenuDialog$ContextMenuBuilder;

    invoke-virtual {v0, p1}, Lmiui/view/menu/ContextMenuDialog$ContextMenuBuilder;->setHeaderIcon(I)Lcom/miui/internal/view/menu/MenuBuilder;

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Lmiui/view/menu/ContextMenuDialog;->mBuilder:Lmiui/view/menu/ContextMenuDialog$ContextMenuBuilder;

    invoke-virtual {v0, p1}, Lmiui/view/menu/ContextMenuDialog$ContextMenuBuilder;->setHeaderIcon(Landroid/graphics/drawable/Drawable;)Lcom/miui/internal/view/menu/MenuBuilder;

    return-void
.end method

.method public setTitle(I)V
    .registers 3

    iget-object v0, p0, Lmiui/view/menu/ContextMenuDialog;->mBuilder:Lmiui/view/menu/ContextMenuDialog$ContextMenuBuilder;

    invoke-virtual {v0, p1}, Lmiui/view/menu/ContextMenuDialog$ContextMenuBuilder;->setHeaderTitle(I)Lcom/miui/internal/view/menu/MenuBuilder;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lmiui/view/menu/ContextMenuDialog;->mBuilder:Lmiui/view/menu/ContextMenuDialog$ContextMenuBuilder;

    invoke-virtual {v0, p1}, Lmiui/view/menu/ContextMenuDialog$ContextMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Lcom/miui/internal/view/menu/MenuBuilder;

    return-void
.end method

.method public show()V
    .registers 3

    iget-object v0, p0, Lmiui/view/menu/ContextMenuDialog;->mBuilder:Lmiui/view/menu/ContextMenuDialog$ContextMenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/view/menu/ContextMenuDialog$ContextMenuBuilder;->show(Landroid/os/IBinder;)Lcom/miui/internal/view/menu/MenuDialogHelper;

    return-void
.end method
