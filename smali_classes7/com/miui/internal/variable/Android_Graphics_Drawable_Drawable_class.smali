.class public abstract Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final LAYOUT_DIRECTION_LTR:I = 0x0

.field public static final LAYOUT_DIRECTION_RTL:I = 0x1

.field private static final mIdField:Lcom/miui/internal/util/async/ConcurrentWeakHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/internal/util/async/ConcurrentWeakHashMap;

    invoke-direct {v0}, Lcom/miui/internal/util/async/ConcurrentWeakHashMap;-><init>()V

    sput-object v0, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;->mIdField:Lcom/miui/internal/util/async/ConcurrentWeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId(Landroid/graphics/drawable/Drawable;)I
    .locals 0

    sget-object p0, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;->mIdField:Lcom/miui/internal/util/async/ConcurrentWeakHashMap;

    invoke-virtual {p0, p1}, Lcom/miui/internal/util/async/ConcurrentWeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public abstract getLayoutDirection(Landroid/graphics/drawable/Drawable;)I
.end method

.method public setId(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    sget-object p0, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;->mIdField:Lcom/miui/internal/util/async/ConcurrentWeakHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/util/async/ConcurrentWeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
