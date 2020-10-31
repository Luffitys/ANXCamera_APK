.class public Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_Drawable_class;
.super Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;
.source "Android_Graphics_Drawable_Drawable_class.java"


# static fields
.field private static final getResolvedLayoutDirectionSelf:Lmiui/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_Drawable_class;->getGetResolvedLayoutDirectionSelf()Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_Drawable_class;->getResolvedLayoutDirectionSelf:Lmiui/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;-><init>()V

    return-void
.end method

.method private static getGetResolvedLayoutDirectionSelf()Lmiui/reflect/Method;
    .registers 3

    :try_start_0
    const-class v0, Landroid/graphics/drawable/Drawable;

    const-string v1, "getResolvedLayoutDirectionSelf"

    const-string v2, "()I"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public getLayoutDirection(Landroid/graphics/drawable/Drawable;)I
    .registers 6

    sget-object v0, Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_Drawable_class;->getResolvedLayoutDirectionSelf:Lmiui/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    const/4 v2, 0x0

    :try_start_6
    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, p1, v3}, Lmiui/reflect/Method;->invokeInt(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v0
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v2

    const-string v3, "android.graphics.drawable.Drawable.getResolvedLayoutDirectionSelf"

    invoke-virtual {v2, v3, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_17
    return v1
.end method
