.class public Lcom/miui/internal/variable/v16/Android_View_View_class_common;
.super Lcom/miui/internal/variable/Android_View_View_class;
.source "Android_View_View_class_common.java"


# static fields
.field private static ListenerInfoClass:Ljava/lang/Class;

.field private static createSnapshot:Lmiui/reflect/Method;

.field private static final getContextMenuInfo:Lmiui/reflect/Method;

.field private static final mKeyedTags:Lmiui/reflect/Field;

.field private static final mLeft:Lmiui/reflect/Field;

.field private static final mListenerInfo:Lmiui/reflect/Field;

.field private static final mOldHeightMeasureSpec:Lmiui/reflect/Field;

.field private static final mOldWidthMeasureSpec:Lmiui/reflect/Field;

.field private static mOnCreateContextMenuListener:Lmiui/reflect/Field;

.field private static final mPrivateFlags:Lmiui/reflect/Field;

.field private static final mRight:Lmiui/reflect/Field;

.field private static final mScrollX:Lmiui/reflect/Field;

.field private static final mScrollY:Lmiui/reflect/Field;

.field private static final onCreateContextMenu:Lmiui/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Landroid/view/View;

    const-string v1, "mPrivateFlags"

    const-string v2, "I"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->mPrivateFlags:Lmiui/reflect/Field;

    const-class v0, Landroid/view/View;

    const-string v1, "mOldWidthMeasureSpec"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->mOldWidthMeasureSpec:Lmiui/reflect/Field;

    const-class v0, Landroid/view/View;

    const-string v1, "mOldHeightMeasureSpec"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->mOldHeightMeasureSpec:Lmiui/reflect/Field;

    const-class v0, Landroid/view/View;

    const-string v1, "mScrollX"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->mScrollX:Lmiui/reflect/Field;

    const-class v0, Landroid/view/View;

    const-string v1, "mScrollY"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->mScrollY:Lmiui/reflect/Field;

    const-class v0, Landroid/view/View;

    const-string v1, "mLeft"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->mLeft:Lmiui/reflect/Field;

    const-class v0, Landroid/view/View;

    const-string v1, "mRight"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->mRight:Lmiui/reflect/Field;

    const-class v0, Landroid/view/View;

    const-string v1, "getContextMenuInfo"

    const-string v2, "()Landroid/view/ContextMenu$ContextMenuInfo;"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->getContextMenuInfo:Lmiui/reflect/Method;

    const-class v0, Landroid/view/View;

    const-string v1, "onCreateContextMenu"

    const-string v2, "(Landroid/view/ContextMenu;)V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->onCreateContextMenu:Lmiui/reflect/Method;

    const-class v0, Landroid/view/View;

    const-string v1, "mListenerInfo"

    const-string v2, "Landroid/view/View$ListenerInfo;"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->mListenerInfo:Lmiui/reflect/Field;

    const-class v0, Landroid/view/View;

    const-string v1, "mKeyedTags"

    const-string v2, "Landroid/util/SparseArray;"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->mKeyedTags:Lmiui/reflect/Field;

    :try_start_78
    const-class v0, Landroid/view/View;

    const-string v1, "createSnapshot"

    const-string v2, "(Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->createSnapshot:Lmiui/reflect/Method;
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_84} :catch_85

    goto :goto_89

    :catch_85
    move-exception v0

    const/4 v1, 0x0

    sput-object v1, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->createSnapshot:Lmiui/reflect/Method;

    :goto_89
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/miui/internal/variable/Android_View_View_class;-><init>()V

    return-void
.end method

.method private getOldHeightMeasureSpec(Landroid/view/View;)I
    .registers 5

    :try_start_0
    sget-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->mOldHeightMeasureSpec:Lmiui/reflect/Field;

    invoke-virtual {v0, p1}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v1

    const-string v2, "android.view.View.mOldHeightMeasureSpec"

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method private getOldWidthMeasureSpec(Landroid/view/View;)I
    .registers 5

    :try_start_0
    sget-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->mOldWidthMeasureSpec:Lmiui/reflect/Field;

    invoke-virtual {v0, p1}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v1

    const-string v2, "android.view.View.mOldWidthMeasureSpec"

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method private getPrivateFlags(Landroid/view/View;)I
    .registers 5

    :try_start_0
    sget-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->mPrivateFlags:Lmiui/reflect/Field;

    invoke-virtual {v0, p1}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v1

    const-string v2, "android.view.View.mPrivateFlags"

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method private setPrivateFlags(Landroid/view/View;I)V
    .registers 6

    :try_start_0
    sget-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->mPrivateFlags:Lmiui/reflect/Field;

    invoke-virtual {v0, p1, p2}, Lmiui/reflect/Field;->set(Ljava/lang/Object;I)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_10

    :catch_6
    move-exception v0

    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v1

    const-string v2, "android.view.View.mPrivateFlags"

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_10
    return-void
.end method


# virtual methods
.method protected attachSpecialMethods()V
    .registers 1

    return-void
.end method

.method public buildProxy()V
    .registers 3

    const-string v0, "refreshDrawableState"

    const-string v1, "()V"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    const-string v0, "onCreateDrawableState"

    const-string v1, "(I)[I"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    const-string v0, "createContextMenu"

    const-string v1, "(Landroid/view/ContextMenu;)V"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    const-string v0, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V"

    invoke-virtual {p0, v0}, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->attachConstructor(Ljava/lang/String;)J

    const-string v0, "(Landroid/content/Context;Landroid/util/AttributeSet;)V"

    invoke-virtual {p0, v0}, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->attachConstructor(Ljava/lang/String;)J

    invoke-virtual {p0}, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->attachSpecialMethods()V

    return-void
.end method

.method protected callOriginalOnCreateDrawableState(JLandroid/view/View;I)[I
    .registers 6

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->originalOnCreateDrawableState(JLandroid/view/View;I)[I

    move-result-object v0

    return-object v0
.end method

.method protected callOriginalRefreshDrawableState(JLandroid/view/View;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->originalRefreshDrawableState(JLandroid/view/View;)V

    return-void
.end method

.method public createSnapshot(Landroid/view/View;Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;
    .registers 10

    sget-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->createSnapshot:Lmiui/reflect/Method;

    if-eqz v0, :cond_2b

    :try_start_4
    const-class v1, Landroid/view/View;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, p1, v2}, Lmiui/reflect/Method;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_20} :catch_21

    return-object v0

    :catch_21
    move-exception v0

    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v1

    const-string v2, "invoke setLayoutInScreenEnabled failed"

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2b
    const/4 v0, 0x0

    return-object v0
.end method

.method protected handle()V
    .registers 8

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->handleRefreshDrawableState(JLandroid/view/View;)V

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->handleOnCreateDrawableState(JLandroid/view/View;I)[I

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->handleCreateContextMenu(JLandroid/view/View;Landroid/view/ContextMenu;)V

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->handle_init_(JLandroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual/range {v0 .. v5}, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->handle_init_(JLandroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method protected handleCreateContextMenu(JLandroid/view/View;Landroid/view/ContextMenu;)V
    .registers 10

    instance-of v0, p4, Lcom/miui/internal/view/menu/ContextMenuBuilder;

    if-eqz v0, :cond_6d

    sget-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->ListenerInfoClass:Ljava/lang/Class;

    if-nez v0, :cond_20

    :try_start_8
    const-string v0, "android.view.View$ListenerInfo"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->ListenerInfoClass:Ljava/lang/Class;

    const-string v1, "mOnCreateContextMenuListener"

    const-string v2, "Landroid/view/View$OnCreateContextMenuListener;"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->mOnCreateContextMenuListener:Lmiui/reflect/Field;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1a} :catch_1b

    goto :goto_20

    :catch_1b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :cond_20
    :goto_20
    sget-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->getContextMenuInfo:Lmiui/reflect/Method;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p3, v3}, Lmiui/reflect/Method;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ContextMenu$ContextMenuInfo;

    move-object v1, p4

    check-cast v1, Lcom/miui/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {v1, v0}, Lcom/miui/internal/view/menu/ContextMenuBuilder;->setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    sget-object v1, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->onCreateContextMenu:Lmiui/reflect/Method;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p4, v4, v2

    invoke-virtual {v1, v3, p3, v4}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    sget-object v1, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->mListenerInfo:Lmiui/reflect/Field;

    invoke-virtual {v1, p3}, Lmiui/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_58

    sget-object v2, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->mOnCreateContextMenuListener:Lmiui/reflect/Field;

    invoke-virtual {v2, v1}, Lmiui/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View$OnCreateContextMenuListener;

    if-eqz v2, :cond_58

    invoke-interface {v2, p4, p3, v0}, Landroid/view/View$OnCreateContextMenuListener;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    :cond_58
    move-object v2, p4

    check-cast v2, Lcom/miui/internal/view/menu/ContextMenuBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/miui/internal/view/menu/ContextMenuBuilder;->setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_6c

    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, p4}, Landroid/view/ViewParent;->createContextMenu(Landroid/view/ContextMenu;)V

    :cond_6c
    goto :goto_70

    :cond_6d
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->originalCreateContextMenu(JLandroid/view/View;Landroid/view/ContextMenu;)V

    :goto_70
    return-void
.end method

.method protected handleOnCreateDrawableState(JLandroid/view/View;I)[I
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->callOriginalOnCreateDrawableState(JLandroid/view/View;I)[I

    move-result-object v0

    invoke-virtual {p0, p3, v0, p4}, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->onCreateDrawableState(Landroid/view/View;[II)[I

    move-result-object v1

    return-object v1
.end method

.method protected handleRefreshDrawableState(JLandroid/view/View;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->callOriginalRefreshDrawableState(JLandroid/view/View;)V

    invoke-static {p3}, Lcom/miui/internal/util/TaggingDrawableHelper;->onDrawableStateChange(Landroid/view/View;)V

    return-void
.end method

.method protected handle_init_(JLandroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->original_init_(JLandroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p3, p5}, Lcom/miui/internal/util/TaggingDrawableHelper;->initViewSequenceStates(Landroid/view/View;Landroid/util/AttributeSet;)V

    return-void
.end method

.method protected handle_init_(JLandroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    invoke-virtual/range {p0 .. p6}, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->original_init_(JLandroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p3, p5}, Lcom/miui/internal/util/TaggingDrawableHelper;->initViewSequenceStates(Landroid/view/View;Landroid/util/AttributeSet;)V

    return-void
.end method

.method protected originalCreateContextMenu(JLandroid/view/View;Landroid/view/ContextMenu;)V
    .registers 7

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "com.miui.internal.variable.v16.Android_View_View_class.originalCreateContextMenu(long, View, ContextMenu)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected originalOnCreateDrawableState(JLandroid/view/View;I)[I
    .registers 7

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "com.miui.internal.variable.v16.Android_View_View_class.originalOnCreateDrawableState(long, View, int)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected originalRefreshDrawableState(JLandroid/view/View;)V
    .registers 6

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "com.miui.internal.variable.v16.Android_View_View_class.originalRefreshDrawableState(long, View)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected original_init_(JLandroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "com.miui.internal.variable.v16.Android_View_View_class.original_init_(long, View, Context, AttributeSet)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected original_init_(JLandroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "com.miui.internal.variable.v16.Android_View_View_class.original_init_(long, View, Context, AttributeSet, int)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public relayout(Landroid/view/View;)V
    .registers 9

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-eqz v0, :cond_34

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_34

    invoke-direct {p0, p1}, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->getPrivateFlags(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->forceLayout()V

    invoke-direct {p0, p1}, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->getOldWidthMeasureSpec(Landroid/view/View;)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->getOldHeightMeasureSpec(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->setPrivateFlags(Landroid/view/View;I)V

    :cond_34
    return-void
.end method

.method public setImportantForAccessibilityNoHideDescendants(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public setLeftDirectly(Landroid/view/View;I)V
    .registers 6

    :try_start_0
    sget-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->mLeft:Lmiui/reflect/Field;

    invoke-virtual {v0, p1, p2}, Lmiui/reflect/Field;->set(Ljava/lang/Object;I)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_10

    :catch_6
    move-exception v0

    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v1

    const-string v2, "android.view.View.mScrollY"

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_10
    return-void
.end method

.method public setRightDirectly(Landroid/view/View;I)V
    .registers 6

    :try_start_0
    sget-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->mRight:Lmiui/reflect/Field;

    invoke-virtual {v0, p1, p2}, Lmiui/reflect/Field;->set(Ljava/lang/Object;I)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_10

    :catch_6
    move-exception v0

    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v1

    const-string v2, "android.view.View.mScrollY"

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_10
    return-void
.end method

.method public setScrollXDirectly(Landroid/view/View;I)V
    .registers 6

    :try_start_0
    sget-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->mScrollX:Lmiui/reflect/Field;

    invoke-virtual {v0, p1, p2}, Lmiui/reflect/Field;->set(Ljava/lang/Object;I)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_10

    :catch_6
    move-exception v0

    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v1

    const-string v2, "android.view.View.mScrollX"

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_10
    return-void
.end method

.method public setScrollYDirectly(Landroid/view/View;I)V
    .registers 6

    :try_start_0
    sget-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->mScrollY:Lmiui/reflect/Field;

    invoke-virtual {v0, p1, p2}, Lmiui/reflect/Field;->set(Ljava/lang/Object;I)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_10

    :catch_6
    move-exception v0

    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v1

    const-string v2, "android.view.View.mScrollY"

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_10
    return-void
.end method
