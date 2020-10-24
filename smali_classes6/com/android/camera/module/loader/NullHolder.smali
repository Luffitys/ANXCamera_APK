.class public final Lcom/android/camera/module/loader/NullHolder;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mException:I

.field private final mValue:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/loader/NullHolder;->mValue:Ljava/lang/Object;

    iput p2, p0, Lcom/android/camera/module/loader/NullHolder;->mException:I

    return-void
.end method

.method private static of(Ljava/lang/Object;I)Lcom/android/camera/module/loader/NullHolder;
    .locals 1

    new-instance v0, Lcom/android/camera/module/loader/NullHolder;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/module/loader/NullHolder;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static final ofNullable(Ljava/lang/Object;)Lcom/android/camera/module/loader/NullHolder;
    .locals 1

    const/16 v0, 0xe0

    invoke-static {p0, v0}, Lcom/android/camera/module/loader/NullHolder;->of(Ljava/lang/Object;I)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p0

    return-object p0
.end method

.method public static final ofNullable(Ljava/lang/Object;I)Lcom/android/camera/module/loader/NullHolder;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/camera/module/loader/NullHolder;->of(Ljava/lang/Object;I)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/loader/NullHolder;->mValue:Ljava/lang/Object;

    return-object p0
.end method

.method public getException()I
    .locals 0

    iget p0, p0, Lcom/android/camera/module/loader/NullHolder;->mException:I

    return p0
.end method

.method public isPresent()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/loader/NullHolder;->mValue:Ljava/lang/Object;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setException(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/module/loader/NullHolder;->mException:I

    return-void
.end method
