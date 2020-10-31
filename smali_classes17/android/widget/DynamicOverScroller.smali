.class Landroid/widget/DynamicOverScroller;
.super Landroid/widget/OverScroller;
.source "DynamicOverScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DynamicOverScroller$OverScrollHandler;,
        Landroid/widget/DynamicOverScroller$DynamicScroller;
    }
.end annotation


# static fields
.field private static final FLING_FRICTION:F = 0.4761905f

.field private static final FLING_VELOCITY_SCALE:F = 1.05f

.field private static final MAX_SPRING_INITIAL_VELOCITY:F = 4000.0f

.field private static final MINIMAL_VISIBLE_CHANGE:F = 0.5f

.field private static final SPRING_DAMPING_RATIO:F = 0.99f

.field private static final SPRING_STIFFNESS:F = 200.0f

.field private static final mScrollerY:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "mScrollerY"

    invoke-static {v0}, Landroid/widget/DynamicOverScroller;->reflectField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/widget/DynamicOverScroller;->mScrollerY:Ljava/lang/reflect/Field;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    sget-object v0, Landroid/widget/DynamicOverScroller;->mScrollerY:Ljava/lang/reflect/Field;

    new-instance v1, Landroid/widget/DynamicOverScroller$DynamicScroller;

    invoke-direct {v1, p1}, Landroid/widget/DynamicOverScroller$DynamicScroller;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1}, Landroid/widget/DynamicOverScroller;->replaceScroller(Ljava/lang/reflect/Field;Landroid/widget/OverScroller$SplineOverScroller;)V

    return-void
.end method

.method private static reflectField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 3

    :try_start_0
    const-class v0, Landroid/widget/OverScroller;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private replaceScroller(Ljava/lang/reflect/Field;Landroid/widget/OverScroller$SplineOverScroller;)V
    .registers 4

    :try_start_0
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_8

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_8
    return-void
.end method
