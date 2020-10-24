.class public Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_AnimatedRotateDrawable_class;
.super Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;
.source ""


# static fields
.field private static final CLASS:Ljava/lang/Class;

.field private static final setFramesCount:Lmiui/reflect/Method;

.field private static final setFramesDuration:Lmiui/reflect/Method;

.field private static final start:Lmiui/reflect/Method;

.field private static final stop:Lmiui/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-string v0, "android.graphics.drawable.AnimatedRotateDrawable"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v1

    const-string v2, "android.graphics.drawable.AnimatedRotateDrawable"

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_AnimatedRotateDrawable_class;->CLASS:Ljava/lang/Class;

    const-string v1, "setFramesCount"

    const-string v2, "(I)V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_AnimatedRotateDrawable_class;->setFramesCount:Lmiui/reflect/Method;

    sget-object v0, Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_AnimatedRotateDrawable_class;->CLASS:Ljava/lang/Class;

    const-string v1, "setFramesDuration"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_AnimatedRotateDrawable_class;->setFramesDuration:Lmiui/reflect/Method;

    sget-object v0, Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_AnimatedRotateDrawable_class;->CLASS:Ljava/lang/Class;

    const-string v1, "start"

    const-string v2, "()V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_AnimatedRotateDrawable_class;->start:Lmiui/reflect/Method;

    sget-object v0, Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_AnimatedRotateDrawable_class;->CLASS:Ljava/lang/Class;

    const-string v1, "stop"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_AnimatedRotateDrawable_class;->stop:Lmiui/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutDirection(Landroid/graphics/drawable/Drawable;)I
    .locals 0

    invoke-static {}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class$Factory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class$Factory;->get()Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result p0

    return p0
.end method

.method public setFramesCount(Landroid/graphics/drawable/Drawable;I)V
    .locals 3

    :try_start_0
    sget-object p0, Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_AnimatedRotateDrawable_class;->setFramesCount:Lmiui/reflect/Method;

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, p1, v1}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object p1

    const-string p2, "android.graphics.drawable.AnimatedRotateDrawable.setFramesCount"

    invoke-virtual {p1, p2, p0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setFramesDuration(Landroid/graphics/drawable/Drawable;I)V
    .locals 3

    :try_start_0
    sget-object p0, Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_AnimatedRotateDrawable_class;->setFramesDuration:Lmiui/reflect/Method;

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, p1, v1}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object p1

    const-string p2, "android.graphics.drawable.AnimatedRotateDrawable.setFramesDuration"

    invoke-virtual {p1, p2, p0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public start(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    :try_start_0
    sget-object p0, Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_AnimatedRotateDrawable_class;->start:Lmiui/reflect/Method;

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, p1, v1}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object p1

    const-string v0, "android.graphics.drawable.AnimatedRotateDrawable.start"

    invoke-virtual {p1, v0, p0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public stop(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    :try_start_0
    sget-object p0, Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_AnimatedRotateDrawable_class;->stop:Lmiui/reflect/Method;

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, p1, v1}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object p1

    const-string v0, "android.graphics.drawable.AnimatedRotateDrawable.stop"

    invoke-virtual {p1, v0, p0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
