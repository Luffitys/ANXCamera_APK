.class public final Landroid/os/VibrationEffect$Composition;
.super Ljava/lang/Object;
.source "VibrationEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/VibrationEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Composition"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/VibrationEffect$Composition$PrimitiveEffect;,
        Landroid/os/VibrationEffect$Composition$Primitive;
    }
.end annotation


# static fields
.field public static final PRIMITIVE_CLICK:I = 0x1

.field public static final PRIMITIVE_NOOP:I = 0x0

.field public static final PRIMITIVE_QUICK_FALL:I = 0x6

.field public static final PRIMITIVE_QUICK_RISE:I = 0x4

.field public static final PRIMITIVE_SLOW_RISE:I = 0x5

.field public static final PRIMITIVE_SPIN:I = 0x3

.field public static final PRIMITIVE_THUD:I = 0x2

.field public static final PRIMITIVE_TICK:I = 0x7


# instance fields
.field private mEffects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/VibrationEffect$Composition$PrimitiveEffect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/VibrationEffect$Composition;->mEffects:Ljava/util/ArrayList;

    return-void
.end method

.method static checkPrimitive(I)I
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x7

    const-string/jumbo v2, "primitiveId"

    invoke-static {p0, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    return p0
.end method

.method public static primitiveToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_20

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8
    const-string v0, "PRIMITIVE_TICK"

    return-object v0

    :pswitch_b
    const-string v0, "PRIMITIVE_QUICK_FALL"

    return-object v0

    :pswitch_e
    const-string v0, "PRIMITIVE_SLOW_RISE"

    return-object v0

    :pswitch_11
    const-string v0, "PRIMITIVE_QUICK_RISE"

    return-object v0

    :pswitch_14
    const-string v0, "PRIMITIVE_SPIN"

    return-object v0

    :pswitch_17
    const-string v0, "PRIMITIVE_THUD"

    return-object v0

    :pswitch_1a
    const-string v0, "PRIMITIVE_CLICK"

    return-object v0

    :pswitch_1d
    const-string v0, "PRIMITIVE_NOOP"

    return-object v0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public addPrimitive(I)Landroid/os/VibrationEffect$Composition;
    .registers 4

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IFI)Landroid/os/VibrationEffect$Composition;

    return-object p0
.end method

.method public addPrimitive(IF)Landroid/os/VibrationEffect$Composition;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IFI)Landroid/os/VibrationEffect$Composition;

    return-object p0
.end method

.method public addPrimitive(IFI)Landroid/os/VibrationEffect$Composition;
    .registers 7

    iget-object v0, p0, Landroid/os/VibrationEffect$Composition;->mEffects:Ljava/util/ArrayList;

    new-instance v1, Landroid/os/VibrationEffect$Composition$PrimitiveEffect;

    invoke-static {p1}, Landroid/os/VibrationEffect$Composition;->checkPrimitive(I)I

    move-result v2

    invoke-direct {v1, v2, p2, p3}, Landroid/os/VibrationEffect$Composition$PrimitiveEffect;-><init>(IFI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public compose()Landroid/os/VibrationEffect;
    .registers 3

    iget-object v0, p0, Landroid/os/VibrationEffect$Composition;->mEffects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Landroid/os/VibrationEffect$Composed;

    iget-object v1, p0, Landroid/os/VibrationEffect$Composition;->mEffects:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Landroid/os/VibrationEffect$Composed;-><init>(Ljava/util/List;)V

    return-object v0

    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Composition must have at least one element to compose."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
