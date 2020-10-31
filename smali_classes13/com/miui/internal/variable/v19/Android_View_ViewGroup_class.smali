.class public Lcom/miui/internal/variable/v19/Android_View_ViewGroup_class;
.super Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;
.source "Android_View_ViewGroup_class.java"


# static fields
.field protected static final LAYOUT_MODE_UNDEFINED:I

.field protected static final R_styleable_ViewGroup_layoutMode:I

.field protected static final setLayoutMode:Lmiui/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    sget-object v0, Lcom/miui/internal/variable/v19/Android_View_ViewGroup_class;->com_android_internal_R_styleable:Ljava/lang/Class;

    const-string v1, "ViewGroup_layoutMode"

    const-string v2, "I"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/miui/internal/variable/v19/Android_View_ViewGroup_class;->R_styleable_ViewGroup_layoutMode:I

    const-class v0, Landroid/view/ViewGroup;

    const-string v3, "LAYOUT_MODE_UNDEFINED"

    invoke-static {v0, v3, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/miui/internal/variable/v19/Android_View_ViewGroup_class;->LAYOUT_MODE_UNDEFINED:I

    const-class v0, Landroid/view/ViewGroup;

    const-string v1, "setLayoutMode"

    const-string v2, "(I)V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v19/Android_View_ViewGroup_class;->setLayoutMode:Lmiui/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;-><init>()V

    return-void
.end method


# virtual methods
.method protected processAttribute(Landroid/view/ViewGroup;ILandroid/content/res/TypedArray;Landroid/content/Context;)V
    .registers 10

    sget v0, Lcom/miui/internal/variable/v19/Android_View_ViewGroup_class;->R_styleable_ViewGroup_layoutMode:I

    if-ne p2, v0, :cond_1c

    sget-object v0, Lcom/miui/internal/variable/v19/Android_View_ViewGroup_class;->setLayoutMode:Lmiui/reflect/Method;

    const-class v1, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget v4, Lcom/miui/internal/variable/v19/Android_View_ViewGroup_class;->LAYOUT_MODE_UNDEFINED:I

    invoke-virtual {p3, p2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, p1, v2}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_1f

    :cond_1c
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->processAttribute(Landroid/view/ViewGroup;ILandroid/content/res/TypedArray;Landroid/content/Context;)V

    :goto_1f
    return-void
.end method
