.class public Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_Drawable_class;
.super Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;
.source ""


# static fields
.field private static final getResolvedLayoutDirectionSelf:Lmiui/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_Drawable_class;->getGetResolvedLayoutDirectionSelf()Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_Drawable_class;->getResolvedLayoutDirectionSelf:Lmiui/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;-><init>()V

    return-void
.end method

.method private static getGetResolvedLayoutDirectionSelf()Lmiui/reflect/Method;
    .locals 3

    :try_start_0
    const-class v0, Landroid/graphics/drawable/Drawable;

    const-string v1, "getResolvedLayoutDirectionSelf"

    const-string v2, "()I"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getLayoutDirection(Landroid/graphics/drawable/Drawable;)I
    .locals 3

    sget-object p0, Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_Drawable_class;->getResolvedLayoutDirectionSelf:Lmiui/reflect/Method;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p1, v2}, Lmiui/reflect/Method;->invokeInt(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object p1

    const-string v1, "android.graphics.drawable.Drawable.getResolvedLayoutDirectionSelf"

    invoke-virtual {p1, v1, p0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return v0
.end method
