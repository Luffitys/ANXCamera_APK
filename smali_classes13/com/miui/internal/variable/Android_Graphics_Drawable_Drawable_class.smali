.class public abstract Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;
.super Ljava/lang/Object;
.source "Android_Graphics_Drawable_Drawable_class.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class$Factory;
    }
.end annotation


# static fields
.field public static final LAYOUT_DIRECTION_LTR:I = 0x0

.field public static final LAYOUT_DIRECTION_RTL:I = 0x1

.field private static final mIdField:Lcom/miui/internal/util/async/ConcurrentWeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/internal/util/async/ConcurrentWeakHashMap<",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/miui/internal/util/async/ConcurrentWeakHashMap;

    invoke-direct {v0}, Lcom/miui/internal/util/async/ConcurrentWeakHashMap;-><init>()V

    sput-object v0, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;->mIdField:Lcom/miui/internal/util/async/ConcurrentWeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId(Landroid/graphics/drawable/Drawable;)I
    .registers 4

    sget-object v0, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;->mIdField:Lcom/miui/internal/util/async/ConcurrentWeakHashMap;

    invoke-virtual {v0, p1}, Lcom/miui/internal/util/async/ConcurrentWeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_c

    const/4 v1, 0x0

    goto :goto_10

    :cond_c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_10
    return v1
.end method

.method public abstract getLayoutDirection(Landroid/graphics/drawable/Drawable;)I
.end method

.method public setId(Landroid/graphics/drawable/Drawable;I)V
    .registers 5

    sget-object v0, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;->mIdField:Lcom/miui/internal/util/async/ConcurrentWeakHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/miui/internal/util/async/ConcurrentWeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
