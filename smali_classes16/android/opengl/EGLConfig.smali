.class public Landroid/opengl/EGLConfig;
.super Landroid/opengl/EGLObjectHandle;
.source "EGLConfig.java"


# direct methods
.method private constructor <init>(J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/opengl/EGLObjectHandle;-><init>(J)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Landroid/opengl/EGLConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/opengl/EGLConfig;

    invoke-virtual {p0}, Landroid/opengl/EGLConfig;->getNativeHandle()J

    move-result-wide v3

    invoke-virtual {v1}, Landroid/opengl/EGLConfig;->getNativeHandle()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_1a

    goto :goto_1b

    :cond_1a
    move v0, v2

    :goto_1b
    return v0
.end method
