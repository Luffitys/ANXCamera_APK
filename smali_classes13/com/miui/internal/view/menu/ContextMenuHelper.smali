.class public Lcom/miui/internal/view/menu/ContextMenuHelper;
.super Ljava/lang/Object;
.source "ContextMenuHelper.java"


# static fields
.field private static final getContextMenuInfo:Ljava/lang/reflect/Method;

.field private static final mListenerInfo:Ljava/lang/reflect/Field;

.field private static final mOnCreateContextMenuListener:Ljava/lang/reflect/Field;

.field private static final onCreateContextMenu:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string v0, "android.view.View$ListenerInfo"

    const-string v1, "mOnCreateContextMenuListener"

    invoke-static {v0, v1}, Lcom/miui/internal/util/ReflectUtils;->getDeclaredField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/view/menu/ContextMenuHelper;->mOnCreateContextMenuListener:Ljava/lang/reflect/Field;

    const-class v0, Landroid/view/View;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getContextMenuInfo"

    invoke-static {v0, v3, v2}, Lcom/miui/internal/util/ReflectUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/view/menu/ContextMenuHelper;->getContextMenuInfo:Ljava/lang/reflect/Method;

    const-class v0, Landroid/view/View;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/view/ContextMenu;

    aput-object v3, v2, v1

    const-string v1, "onCreateContextMenu"

    invoke-static {v0, v1, v2}, Lcom/miui/internal/util/ReflectUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/view/menu/ContextMenuHelper;->onCreateContextMenu:Ljava/lang/reflect/Method;

    const-class v0, Landroid/view/View;

    const-string v1, "mListenerInfo"

    invoke-static {v0, v1}, Lcom/miui/internal/util/ReflectUtils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/view/menu/ContextMenuHelper;->mListenerInfo:Ljava/lang/reflect/Field;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createContextMenu(Landroid/view/View;Lcom/miui/internal/view/menu/ContextMenuBuilder;)V
    .registers 6

    sget-object v0, Lcom/miui/internal/view/menu/ContextMenuHelper;->getContextMenuInfo:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/miui/internal/util/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-virtual {p1, v0}, Lcom/miui/internal/view/menu/ContextMenuBuilder;->setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    sget-object v2, Lcom/miui/internal/view/menu/ContextMenuHelper;->onCreateContextMenu:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {p0, v2, v3}, Lcom/miui/internal/util/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/internal/view/menu/ContextMenuHelper;->mListenerInfo:Ljava/lang/reflect/Field;

    invoke-static {p0, v1}, Lcom/miui/internal/util/ReflectUtils;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2d

    sget-object v2, Lcom/miui/internal/view/menu/ContextMenuHelper;->mOnCreateContextMenuListener:Ljava/lang/reflect/Field;

    invoke-static {v1, v2}, Lcom/miui/internal/util/ReflectUtils;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View$OnCreateContextMenuListener;

    if-eqz v2, :cond_2d

    invoke-interface {v2, p1, p0, v0}, Landroid/view/View$OnCreateContextMenuListener;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    :cond_2d
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/miui/internal/view/menu/ContextMenuBuilder;->setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_3f

    move-object v3, v2

    check-cast v3, Landroid/view/View;

    invoke-static {v3, p1}, Lcom/miui/internal/view/menu/ContextMenuHelper;->createContextMenu(Landroid/view/View;Lcom/miui/internal/view/menu/ContextMenuBuilder;)V

    :cond_3f
    return-void
.end method
