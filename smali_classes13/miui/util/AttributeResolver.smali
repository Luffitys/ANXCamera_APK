.class public Lmiui/util/AttributeResolver;
.super Ljava/lang/Object;
.source "AttributeResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/AttributeResolver$ResultCache;
    }
.end annotation


# static fields
.field private static final TYPED_VALUE:Landroid/util/TypedValue;

.field private static final TYPED_VALUE_THREAD_LOCAL:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/util/TypedValue;",
            ">;"
        }
    .end annotation
.end field

.field private static mResultCache:Lmiui/util/AttributeResolver$ResultCache;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    sput-object v0, Lmiui/util/AttributeResolver;->TYPED_VALUE:Landroid/util/TypedValue;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lmiui/util/AttributeResolver;->TYPED_VALUE_THREAD_LOCAL:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "Cannot instantiate utility class"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getTypedValue(Landroid/content/Context;)Landroid/util/TypedValue;
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_11

    sget-object v0, Lmiui/util/AttributeResolver;->TYPED_VALUE:Landroid/util/TypedValue;

    return-object v0

    :cond_11
    sget-object v0, Lmiui/util/AttributeResolver;->TYPED_VALUE_THREAD_LOCAL:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/TypedValue;

    if-nez v0, :cond_26

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    move-object v0, v1

    sget-object v1, Lmiui/util/AttributeResolver;->TYPED_VALUE_THREAD_LOCAL:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_26
    return-object v0
.end method

.method public static isUsingMiuiTheme(Landroid/content/Context;)Z
    .registers 10

    sget-object v0, Lmiui/util/AttributeResolver;->mResultCache:Lmiui/util/AttributeResolver$ResultCache;

    if-eqz v0, :cond_f

    iget-object v1, v0, Lmiui/util/AttributeResolver$ResultCache;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p0, :cond_f

    iget-boolean v1, v0, Lmiui/util/AttributeResolver$ResultCache;->mResult:Z

    return v1

    :cond_f
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4e

    sget v1, Lmiui/R$attr;->miui_version:I

    invoke-static {p0, v1, v2}, Lmiui/util/AttributeResolver;->resolveInt(Landroid/content/Context;II)I

    move-result v1

    if-eqz v1, :cond_4e

    const v3, 0x101005d

    invoke-static {p0, v3}, Lmiui/util/AttributeResolver;->resolve(Landroid/content/Context;I)I

    move-result v3

    if-lez v3, :cond_4e

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    sget-object v6, Lcom/miui/internal/R$styleable;->AlertDialog:[I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v6

    sget v7, Lcom/miui/internal/R$styleable;->AlertDialog_layout:I

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    if-eq v7, v8, :cond_43

    move v2, v5

    :cond_43
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v5, Lmiui/util/AttributeResolver$ResultCache;

    invoke-direct {v5, p0, v2}, Lmiui/util/AttributeResolver$ResultCache;-><init>(Landroid/content/Context;Z)V

    sput-object v5, Lmiui/util/AttributeResolver;->mResultCache:Lmiui/util/AttributeResolver$ResultCache;

    return v2

    :cond_4e
    new-instance v1, Lmiui/util/AttributeResolver$ResultCache;

    invoke-direct {v1, p0, v2}, Lmiui/util/AttributeResolver$ResultCache;-><init>(Landroid/content/Context;Z)V

    sput-object v1, Lmiui/util/AttributeResolver;->mResultCache:Lmiui/util/AttributeResolver$ResultCache;

    return v2
.end method

.method public static resolve(Landroid/content/Context;I)I
    .registers 6

    invoke-static {p0}, Lmiui/util/AttributeResolver;->getTypedValue(Landroid/content/Context;)Landroid/util/TypedValue;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_12

    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    :cond_12
    return v1
.end method

.method public static resolveBoolean(Landroid/content/Context;IZ)Z
    .registers 8

    invoke-static {p0}, Lmiui/util/AttributeResolver;->getTypedValue(Landroid/content/Context;)Landroid/util/TypedValue;

    move-result-object v0

    move v1, p2

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget v2, v0, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x12

    if-ne v2, v4, :cond_1b

    iget v2, v0, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v3, 0x0

    :goto_1c
    move v1, v3

    :cond_1d
    return v1
.end method

.method public static resolveColor(Landroid/content/Context;I)I
    .registers 5

    invoke-static {p0}, Lmiui/util/AttributeResolver;->getTypedValue(Landroid/content/Context;)Landroid/util/TypedValue;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-lez v1, :cond_1e

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    return v1

    :cond_1e
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_2d

    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_2d

    iget v1, v0, Landroid/util/TypedValue;->data:I

    return v1

    :cond_2d
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    return v1
.end method

.method public static resolveDimension(Landroid/content/Context;I)F
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0, p1}, Lmiui/util/AttributeResolver;->resolve(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method public static resolveDimensionPixelSize(Landroid/content/Context;I)I
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0, p1}, Lmiui/util/AttributeResolver;->resolve(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public static resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 6

    invoke-static {p0}, Lmiui/util/AttributeResolver;->getTypedValue(Landroid/content/Context;)Landroid/util/TypedValue;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_36

    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-lez v1, :cond_22

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    :cond_22
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_36

    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_36

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget v2, v0, Landroid/util/TypedValue;->data:I

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v1

    :cond_36
    const/4 v1, 0x0

    return-object v1
.end method

.method public static resolveFloat(Landroid/content/Context;IF)F
    .registers 7

    invoke-static {p0}, Lmiui/util/AttributeResolver;->getTypedValue(Landroid/content/Context;)Landroid/util/TypedValue;

    move-result-object v0

    move v1, p2

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_18

    iget v2, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_18

    iget v2, v0, Landroid/util/TypedValue;->data:I

    int-to-float v1, v2

    :cond_18
    return v1
.end method

.method public static resolveInt(Landroid/content/Context;II)I
    .registers 7

    invoke-static {p0}, Lmiui/util/AttributeResolver;->getTypedValue(Landroid/content/Context;)Landroid/util/TypedValue;

    move-result-object v0

    move v1, p2

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_18

    iget v2, v0, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_18

    iget v1, v0, Landroid/util/TypedValue;->data:I

    :cond_18
    return v1
.end method
