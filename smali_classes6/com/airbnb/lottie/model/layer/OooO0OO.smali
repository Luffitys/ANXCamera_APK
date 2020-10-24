.class public abstract Lcom/airbnb/lottie/model/layer/OooO0OO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/airbnb/lottie/o00O0O/OooO0O0/OooO0oO;
.implements Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0O0;
.implements Lcom/airbnb/lottie/model/OooO0o;


# static fields
.field private static final OooOo:I = 0x10

.field private static final OooOo0o:I = 0x2

.field private static final OooOoO:I = 0x13

.field private static final OooOoO0:I = 0x1


# instance fields
.field private final OooO:Landroid/graphics/RectF;

.field private final OooO00o:Landroid/graphics/Path;

.field private final OooO0O0:Landroid/graphics/Matrix;

.field private final OooO0OO:Landroid/graphics/Paint;

.field private final OooO0Oo:Landroid/graphics/Paint;

.field private final OooO0o:Landroid/graphics/Paint;

.field private final OooO0o0:Landroid/graphics/Paint;

.field private final OooO0oO:Landroid/graphics/Paint;

.field private final OooO0oo:Landroid/graphics/RectF;

.field private final OooOO0:Landroid/graphics/RectF;

.field private final OooOO0O:Landroid/graphics/RectF;

.field private final OooOO0o:Ljava/lang/String;

.field final OooOOO:Lcom/airbnb/lottie/o000oOoO;

.field final OooOOO0:Landroid/graphics/Matrix;

.field final OooOOOO:Lcom/airbnb/lottie/model/layer/OooO0oO;

.field private OooOOOo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOO0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private OooOOo:Lcom/airbnb/lottie/model/layer/OooO0OO;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private OooOOo0:Lcom/airbnb/lottie/model/layer/OooO0OO;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private OooOOoo:Ljava/util/List;

.field final OooOo0:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;

.field private final OooOo00:Ljava/util/List;

.field private OooOo0O:Z


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/o000oOoO;Lcom/airbnb/lottie/model/layer/OooO0oO;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO00o:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0O0:Landroid/graphics/Matrix;

    new-instance v0, Lcom/airbnb/lottie/o00O0O/OooO00o;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/o00O0O/OooO00o;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0OO:Landroid/graphics/Paint;

    new-instance v0, Lcom/airbnb/lottie/o00O0O/OooO00o;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/o00O0O/OooO00o;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0Oo:Landroid/graphics/Paint;

    new-instance v0, Lcom/airbnb/lottie/o00O0O/OooO00o;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/o00O0O/OooO00o;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0o0:Landroid/graphics/Paint;

    new-instance v0, Lcom/airbnb/lottie/o00O0O/OooO00o;

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/o00O0O/OooO00o;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0o:Landroid/graphics/Paint;

    new-instance v0, Lcom/airbnb/lottie/o00O0O/OooO00o;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2}, Lcom/airbnb/lottie/o00O0O/OooO00o;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0oO:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0oo:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOO0:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOO0O:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOO0:Landroid/graphics/Matrix;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOo00:Ljava/util/List;

    iput-boolean v1, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOo0O:Z

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOO:Lcom/airbnb/lottie/o000oOoO;

    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOOO:Lcom/airbnb/lottie/model/layer/OooO0oO;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/OooO0oO;->OooO0oO()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#draw"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOO0o:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/OooO0oO;->OooO0o()Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    move-result-object p1

    sget-object v0, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->OooO0OO:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0o:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0o:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/OooO0oO;->OooOo0()Lcom/airbnb/lottie/model/OooOO0/OooOO0o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/OooOO0/OooOO0o;->OooO0O0()Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOo0:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO0O0(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0O0;)V

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/OooO0oO;->OooO0o0()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/OooO0oO;->OooO0o0()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOO0;

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/OooO0oO;->OooO0o0()Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOO0;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOOo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOO0;

    invoke-virtual {p1}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOO0;->OooO00o()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO00o(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0O0;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOOo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOO0;

    invoke-virtual {p1}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOO0;->OooO0OO()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0oo(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;)V

    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO00o(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0O0;)V

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lcom/airbnb/lottie/model/layer/OooO0OO;->Oooo00o()V

    return-void
.end method

.method private OooO(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/content/OooO0o;Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;)V
    .locals 0

    invoke-virtual {p4}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0oo()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    iget-object p4, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO00o:Landroid/graphics/Path;

    invoke-virtual {p4, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO00o:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0OO:Landroid/graphics/Paint;

    invoke-virtual {p5}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0oo()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-float p3, p3

    const p4, 0x40233333    # 2.55f

    mul-float/2addr p3, p4

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO00o:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0OO:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method static synthetic OooO0o0(Lcom/airbnb/lottie/model/layer/OooO0OO;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/model/layer/OooO0OO;->Oooo00O(Z)V

    return-void
.end method

.method private OooOO0(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/content/OooO0o;Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;)V
    .locals 1

    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0oo:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0Oo:Landroid/graphics/Paint;

    invoke-static {p1, p3, v0}, Lcom/airbnb/lottie/o00o0O/OooO0oo;->OooOOO(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p4}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0oo()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    iget-object p4, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO00o:Landroid/graphics/Path;

    invoke-virtual {p4, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO00o:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0OO:Landroid/graphics/Paint;

    invoke-virtual {p5}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0oo()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-float p3, p3

    const p4, 0x40233333    # 2.55f

    mul-float/2addr p3, p4

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO00o:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0OO:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private OooOO0O(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/content/OooO0o;Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;)V
    .locals 1

    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0oo:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0OO:Landroid/graphics/Paint;

    invoke-static {p1, p3, v0}, Lcom/airbnb/lottie/o00o0O/OooO0oo;->OooOOO(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0oo:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0OO:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p4}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0oo()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    iget-object p4, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO00o:Landroid/graphics/Path;

    invoke-virtual {p4, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO00o:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0OO:Landroid/graphics/Paint;

    invoke-virtual {p5}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0oo()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-float p3, p3

    const p4, 0x40233333    # 2.55f

    mul-float/2addr p3, p4

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO00o:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0o0:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private OooOO0o(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/content/OooO0o;Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;)V
    .locals 1

    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0oo:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0Oo:Landroid/graphics/Paint;

    invoke-static {p1, p3, v0}, Lcom/airbnb/lottie/o00o0O/OooO0oo;->OooOOO(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0oo:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0OO:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0o0:Landroid/graphics/Paint;

    invoke-virtual {p5}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0oo()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    int-to-float p5, p5

    const v0, 0x40233333    # 2.55f

    mul-float/2addr p5, v0

    float-to-int p5, p5

    invoke-virtual {p3, p5}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p4}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0oo()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    iget-object p4, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO00o:Landroid/graphics/Path;

    invoke-virtual {p4, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO00o:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO00o:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0o0:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private OooOOO(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 9

    const-string v0, "Layer#saveLayer"

    invoke-static {v0}, Lcom/airbnb/lottie/OooO0o0;->OooO00o(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0oo:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0Oo:Landroid/graphics/Paint;

    const/16 v3, 0x13

    invoke-static {p1, v1, v2, v3}, Lcom/airbnb/lottie/o00o0O/OooO0oo;->OooOOOO(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x1c

    if-ge v1, v3, :cond_0

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_0
    invoke-static {v0}, Lcom/airbnb/lottie/OooO0o0;->OooO0O0(Ljava/lang/String;)F

    :goto_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOOo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOO0;

    invoke-virtual {v0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOO0;->OooO0O0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_a

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOOo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOO0;

    invoke-virtual {v0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOO0;->OooO0O0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/airbnb/lottie/model/content/OooO0o;

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOOo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOO0;

    invoke-virtual {v0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOO0;->OooO00o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOOo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOO0;

    invoke-virtual {v0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOO0;->OooO0OO()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    sget-object v0, Lcom/airbnb/lottie/model/layer/OooO0O0;->OooO0O0:[I

    invoke-virtual {v6}, Lcom/airbnb/lottie/model/content/OooO0o;->OooO00o()Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0xff

    const/4 v3, 0x1

    if-eq v0, v3, :cond_8

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v6}, Lcom/airbnb/lottie/model/content/OooO0o;->OooO0Oo()Z

    move-result v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    if-eqz v0, :cond_2

    invoke-direct/range {v3 .. v8}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOO0O(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/content/OooO0o;Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;)V

    goto :goto_1

    :cond_2
    invoke-direct/range {v3 .. v8}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/content/OooO0o;Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v6}, Lcom/airbnb/lottie/model/content/OooO0o;->OooO0Oo()Z

    move-result v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    if-eqz v0, :cond_4

    invoke-direct/range {v3 .. v8}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOO0o(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/content/OooO0o;Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;)V

    goto :goto_1

    :cond_4
    invoke-direct/range {v3 .. v8}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOO0(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/content/OooO0o;Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;)V

    goto :goto_1

    :cond_5
    if-nez v2, :cond_6

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0OO:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0OO:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0oo:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0OO:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_6
    invoke-virtual {v6}, Lcom/airbnb/lottie/model/content/OooO0o;->OooO0Oo()Z

    move-result v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    if-eqz v0, :cond_7

    invoke-direct/range {v3 .. v8}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOO0(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/content/OooO0o;Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;)V

    goto :goto_1

    :cond_7
    invoke-direct/range {v3 .. v8}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOOO(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/content/OooO0o;Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;)V

    goto :goto_1

    :cond_8
    invoke-direct {p0}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOOo()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0OO:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0oo:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0OO:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_9
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_a
    const-string p0, "Layer#restoreLayer"

    invoke-static {p0}, Lcom/airbnb/lottie/OooO0o0;->OooO00o(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-static {p0}, Lcom/airbnb/lottie/OooO0o0;->OooO0O0(Ljava/lang/String;)F

    return-void
.end method

.method private OooOOO0(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/content/OooO0o;Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;)V
    .locals 1

    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0oo:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0o0:Landroid/graphics/Paint;

    invoke-static {p1, p3, v0}, Lcom/airbnb/lottie/o00o0O/OooO0oo;->OooOOO(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0oo:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0OO:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0o0:Landroid/graphics/Paint;

    invoke-virtual {p5}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0oo()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    int-to-float p5, p5

    const v0, 0x40233333    # 2.55f

    mul-float/2addr p5, v0

    float-to-int p5, p5

    invoke-virtual {p3, p5}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p4}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0oo()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    iget-object p4, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO00o:Landroid/graphics/Path;

    invoke-virtual {p4, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO00o:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO00o:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0o0:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private OooOOOO(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/content/OooO0o;Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;)V
    .locals 0

    invoke-virtual {p4}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0oo()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    iget-object p4, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO00o:Landroid/graphics/Path;

    invoke-virtual {p4, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO00o:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO00o:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0o0:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private OooOOOo()Z
    .locals 4

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOOo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOO0;

    invoke-virtual {v0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOO0;->OooO00o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOOo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOO0;

    invoke-virtual {v2}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOO0;->OooO0O0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOOo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOO0;

    invoke-virtual {v2}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOO0;->OooO0O0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/model/content/OooO0o;

    invoke-virtual {v2}, Lcom/airbnb/lottie/model/content/OooO0o;->OooO00o()Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    move-result-object v2

    sget-object v3, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->OooO0Oo:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private OooOOo(Landroid/graphics/Canvas;)V
    .locals 10

    const-string v0, "Layer#clearLayer"

    invoke-static {v0}, Lcom/airbnb/lottie/OooO0o0;->OooO00o(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0oo:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v5, v2, v3

    iget v2, v1, Landroid/graphics/RectF;->top:F

    sub-float v6, v2, v3

    iget v2, v1, Landroid/graphics/RectF;->right:F

    add-float v7, v2, v3

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float v8, v1, v3

    iget-object v9, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0oO:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-static {v0}, Lcom/airbnb/lottie/OooO0o0;->OooO0O0(Ljava/lang/String;)F

    return-void
.end method

.method private OooOOo0()V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOoo:Ljava/util/List;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOo:Lcom/airbnb/lottie/model/layer/OooO0OO;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOoo:Ljava/util/List;

    return-void

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOoo:Ljava/util/List;

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOo:Lcom/airbnb/lottie/model/layer/OooO0OO;

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOoo:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOo:Lcom/airbnb/lottie/model/layer/OooO0OO;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private OooOo(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 10

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOo0O()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOOo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOO0;

    invoke-virtual {v0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOO0;->OooO0O0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_5

    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOOo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOO0;

    invoke-virtual {v4}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOO0;->OooO0O0()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/lottie/model/content/OooO0o;

    iget-object v5, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOOo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOO0;

    invoke-virtual {v5}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOO0;->OooO00o()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {v5}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0oo()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Path;

    iget-object v6, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO00o:Landroid/graphics/Path;

    invoke-virtual {v6, v5}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object v5, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO00o:Landroid/graphics/Path;

    invoke-virtual {v5, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    sget-object v5, Lcom/airbnb/lottie/model/layer/OooO0O0;->OooO0O0:[I

    invoke-virtual {v4}, Lcom/airbnb/lottie/model/content/OooO0o;->OooO00o()Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x1

    if-eq v5, v6, :cond_4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    const/4 v6, 0x4

    if-eq v5, v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Lcom/airbnb/lottie/model/content/OooO0o;->OooO0Oo()Z

    move-result v4

    if-eqz v4, :cond_2

    return-void

    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO00o:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOO0O:Landroid/graphics/RectF;

    invoke-virtual {v4, v5, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO:Landroid/graphics/RectF;

    if-nez v3, :cond_3

    iget-object v5, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOO0O:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_2

    :cond_3
    iget v5, v4, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOO0O:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iget-object v6, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOO0O:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iget-object v7, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    iget-object v8, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOO0O:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iget-object v8, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    iget-object v9, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOO0O:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_4
    return-void

    :cond_5
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO:Landroid/graphics/RectF;

    invoke-virtual {p1, p0}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result p0

    if-nez p0, :cond_6

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_6
    return-void
.end method

.method static OooOo00(Lcom/airbnb/lottie/model/layer/OooO0oO;Lcom/airbnb/lottie/o000oOoO;Lcom/airbnb/lottie/OooOOOO;)Lcom/airbnb/lottie/model/layer/OooO0OO;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget-object v0, Lcom/airbnb/lottie/model/layer/OooO0O0;->OooO00o:[I

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/OooO0oO;->OooO0Oo()Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown layer type "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/OooO0oO;->OooO0Oo()Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/airbnb/lottie/o00o0O/OooO0Oo;->OooO0o0(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    new-instance p2, Lcom/airbnb/lottie/model/layer/OooOOO;

    invoke-direct {p2, p1, p0}, Lcom/airbnb/lottie/model/layer/OooOOO;-><init>(Lcom/airbnb/lottie/o000oOoO;Lcom/airbnb/lottie/model/layer/OooO0oO;)V

    return-object p2

    :pswitch_1
    new-instance p2, Lcom/airbnb/lottie/model/layer/OooO0oo;

    invoke-direct {p2, p1, p0}, Lcom/airbnb/lottie/model/layer/OooO0oo;-><init>(Lcom/airbnb/lottie/o000oOoO;Lcom/airbnb/lottie/model/layer/OooO0oO;)V

    return-object p2

    :pswitch_2
    new-instance p2, Lcom/airbnb/lottie/model/layer/OooO0o;

    invoke-direct {p2, p1, p0}, Lcom/airbnb/lottie/model/layer/OooO0o;-><init>(Lcom/airbnb/lottie/o000oOoO;Lcom/airbnb/lottie/model/layer/OooO0oO;)V

    return-object p2

    :pswitch_3
    new-instance p2, Lcom/airbnb/lottie/model/layer/OooOO0;

    invoke-direct {p2, p1, p0}, Lcom/airbnb/lottie/model/layer/OooOO0;-><init>(Lcom/airbnb/lottie/o000oOoO;Lcom/airbnb/lottie/model/layer/OooO0oO;)V

    return-object p2

    :pswitch_4
    new-instance v0, Lcom/airbnb/lottie/model/layer/OooO0o0;

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/OooO0oO;->OooOO0O()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/airbnb/lottie/OooOOOO;->OooOOOO(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1, p2}, Lcom/airbnb/lottie/model/layer/OooO0o0;-><init>(Lcom/airbnb/lottie/o000oOoO;Lcom/airbnb/lottie/model/layer/OooO0oO;Ljava/util/List;Lcom/airbnb/lottie/OooOOOO;)V

    return-object v0

    :pswitch_5
    new-instance p2, Lcom/airbnb/lottie/model/layer/OooO;

    invoke-direct {p2, p1, p0}, Lcom/airbnb/lottie/model/layer/OooO;-><init>(Lcom/airbnb/lottie/o000oOoO;Lcom/airbnb/lottie/model/layer/OooO0oO;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private OooOoO()V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOO:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {p0}, Lcom/airbnb/lottie/o000oOoO;->invalidateSelf()V

    return-void
.end method

.method private OooOoO0(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 4

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOo0o()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOOO:Lcom/airbnb/lottie/model/layer/OooO0oO;

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/OooO0oO;->OooO0o()Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    move-result-object v0

    sget-object v1, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->OooO0OO:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOO0:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOo0:Lcom/airbnb/lottie/model/layer/OooO0OO;

    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOO0:Landroid/graphics/RectF;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, p2, v3}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0Oo(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOO0:Landroid/graphics/RectF;

    invoke-virtual {p1, p0}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_2
    return-void
.end method

.method private OooOoOO(F)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOO:Lcom/airbnb/lottie/o000oOoO;

    invoke-virtual {v0}, Lcom/airbnb/lottie/o000oOoO;->OooOOo0()Lcom/airbnb/lottie/OooOOOO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/OooOOOO;->OooOOO()Lcom/airbnb/lottie/OoooooO;

    move-result-object v0

    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOOO:Lcom/airbnb/lottie/model/layer/OooO0oO;

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/OooO0oO;->OooO0oO()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/airbnb/lottie/OoooooO;->OooO0o0(Ljava/lang/String;F)V

    return-void
.end method

.method private Oooo00O(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOo0O:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOo0O:Z

    invoke-direct {p0}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOoO()V

    :cond_0
    return-void
.end method

.method private Oooo00o()V
    .locals 4

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOOO:Lcom/airbnb/lottie/model/layer/OooO0oO;

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/OooO0oO;->OooO0OO()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    new-instance v0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO;

    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOOO:Lcom/airbnb/lottie/model/layer/OooO0oO;

    invoke-virtual {v2}, Lcom/airbnb/lottie/model/layer/OooO0oO;->OooO0OO()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooOO0O()V

    new-instance v2, Lcom/airbnb/lottie/model/layer/OooO00o;

    invoke-direct {v2, p0, v0}, Lcom/airbnb/lottie/model/layer/OooO00o;-><init>(Lcom/airbnb/lottie/model/layer/OooO0OO;Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO;)V

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO00o(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0O0;)V

    invoke-virtual {v0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0oo()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1}, Lcom/airbnb/lottie/model/layer/OooO0OO;->Oooo00O(Z)V

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0oo(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, v1}, Lcom/airbnb/lottie/model/layer/OooO0OO;->Oooo00O(Z)V

    :goto_1
    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 0

    invoke-direct {p0}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOoO()V

    return-void
.end method

.method public OooO0O0(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public OooO0OO(Lcom/airbnb/lottie/model/OooO0o0;ILjava/util/List;Lcom/airbnb/lottie/model/OooO0o0;)V
    .locals 2

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/OooO0OO;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/airbnb/lottie/model/OooO0o0;->OooO0oo(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/OooO0OO;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "__container"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/OooO0OO;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/airbnb/lottie/model/OooO0o0;->OooO00o(Ljava/lang/String;)Lcom/airbnb/lottie/model/OooO0o0;

    move-result-object p4

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/OooO0OO;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/airbnb/lottie/model/OooO0o0;->OooO0OO(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p4, p0}, Lcom/airbnb/lottie/model/OooO0o0;->OooOO0(Lcom/airbnb/lottie/model/OooO0o;)Lcom/airbnb/lottie/model/OooO0o0;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/OooO0OO;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/airbnb/lottie/model/OooO0o0;->OooO(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/OooO0OO;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/airbnb/lottie/model/OooO0o0;->OooO0o0(Ljava/lang/String;I)I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOoo(Lcom/airbnb/lottie/model/OooO0o0;ILjava/util/List;Lcom/airbnb/lottie/model/OooO0o0;)V

    :cond_2
    return-void
.end method

.method public OooO0Oo(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0oo:Landroid/graphics/RectF;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-direct {p0}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOo0()V

    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOO0:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    if-eqz p3, :cond_1

    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOoo:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOO0:Landroid/graphics/Matrix;

    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOoo:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/airbnb/lottie/model/layer/OooO0OO;

    iget-object p3, p3, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOo0:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;

    invoke-virtual {p3}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO0o()Landroid/graphics/Matrix;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOo:Lcom/airbnb/lottie/model/layer/OooO0OO;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOO0:Landroid/graphics/Matrix;

    iget-object p1, p1, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOo0:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;

    invoke-virtual {p1}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO0o()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_1
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOO0:Landroid/graphics/Matrix;

    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOo0:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;

    invoke-virtual {p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO0o()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    return-void
.end method

.method public OooO0o(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 6

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOO0o:Ljava/lang/String;

    invoke-static {v0}, Lcom/airbnb/lottie/OooO0o0;->OooO00o(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOo0O:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOOO:Lcom/airbnb/lottie/model/layer/OooO0oO;

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/OooO0oO;->OooOo0O()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-direct {p0}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOo0()V

    const-string v0, "Layer#parentMatrix"

    invoke-static {v0}, Lcom/airbnb/lottie/OooO0o0;->OooO00o(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0O0:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0O0:Landroid/graphics/Matrix;

    invoke-virtual {v1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOoo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0O0:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOoo:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/model/layer/OooO0OO;

    iget-object v3, v3, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOo0:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;

    invoke-virtual {v3}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO0o()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/airbnb/lottie/OooO0o0;->OooO0O0(Ljava/lang/String;)F

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOo0:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;

    invoke-virtual {v0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO0oo()Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    move-result-object v0

    if-nez v0, :cond_2

    const/16 v0, 0x64

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOo0:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;

    invoke-virtual {v0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO0oo()Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooO0oo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    int-to-float p3, p3

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p3, v1

    int-to-float v0, v0

    mul-float/2addr p3, v0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p3, v0

    mul-float/2addr p3, v1

    float-to-int p3, p3

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOo0o()Z

    move-result v0

    const-string v1, "Layer#drawLayer"

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOo0O()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0O0:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOo0:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;

    invoke-virtual {v0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO0o()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    invoke-static {v1}, Lcom/airbnb/lottie/OooO0o0;->OooO00o(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0O0:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOoo(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    invoke-static {v1}, Lcom/airbnb/lottie/OooO0o0;->OooO0O0(Ljava/lang/String;)F

    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOO0o:Ljava/lang/String;

    invoke-static {p1}, Lcom/airbnb/lottie/OooO0o0;->OooO0O0(Ljava/lang/String;)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOoOO(F)V

    return-void

    :cond_3
    const-string v0, "Layer#computeBounds"

    invoke-static {v0}, Lcom/airbnb/lottie/OooO0o0;->OooO00o(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0oo:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0O0:Landroid/graphics/Matrix;

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0Oo(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0oo:Landroid/graphics/RectF;

    invoke-direct {p0, v2, p2}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOoO0(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0O0:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOo0:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;

    invoke-virtual {v3}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO0o()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0oo:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0O0:Landroid/graphics/Matrix;

    invoke-direct {p0, v2, v3}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOo(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0oo:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0oo:Landroid/graphics/RectF;

    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_4
    invoke-static {v0}, Lcom/airbnb/lottie/OooO0o0;->OooO0O0(Ljava/lang/String;)F

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0oo:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "Layer#saveLayer"

    invoke-static {v0}, Lcom/airbnb/lottie/OooO0o0;->OooO00o(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0OO:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0oo:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0OO:Landroid/graphics/Paint;

    invoke-static {p1, v2, v3}, Lcom/airbnb/lottie/o00o0O/OooO0oo;->OooOOO(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-static {v0}, Lcom/airbnb/lottie/OooO0o0;->OooO0O0(Ljava/lang/String;)F

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOo(Landroid/graphics/Canvas;)V

    invoke-static {v1}, Lcom/airbnb/lottie/OooO0o0;->OooO00o(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0O0:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, v2, p3}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOoo(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    invoke-static {v1}, Lcom/airbnb/lottie/OooO0o0;->OooO0O0(Ljava/lang/String;)F

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOo0O()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0O0:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v1}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOO(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    :cond_5
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOo0o()Z

    move-result v1

    const-string v2, "Layer#restoreLayer"

    if-eqz v1, :cond_6

    const-string v1, "Layer#drawMatte"

    invoke-static {v1}, Lcom/airbnb/lottie/OooO0o0;->OooO00o(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/airbnb/lottie/OooO0o0;->OooO00o(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0oo:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0o:Landroid/graphics/Paint;

    const/16 v5, 0x13

    invoke-static {p1, v3, v4, v5}, Lcom/airbnb/lottie/o00o0O/OooO0oo;->OooOOOO(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V

    invoke-static {v0}, Lcom/airbnb/lottie/OooO0o0;->OooO0O0(Ljava/lang/String;)F

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOo(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOo0:Lcom/airbnb/lottie/model/layer/OooO0OO;

    invoke-virtual {v0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooO0o(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    invoke-static {v2}, Lcom/airbnb/lottie/OooO0o0;->OooO00o(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-static {v2}, Lcom/airbnb/lottie/OooO0o0;->OooO0O0(Ljava/lang/String;)F

    invoke-static {v1}, Lcom/airbnb/lottie/OooO0o0;->OooO0O0(Ljava/lang/String;)F

    :cond_6
    invoke-static {v2}, Lcom/airbnb/lottie/OooO0o0;->OooO00o(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-static {v2}, Lcom/airbnb/lottie/OooO0o0;->OooO0O0(Ljava/lang/String;)F

    :cond_7
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOO0o:Ljava/lang/String;

    invoke-static {p1}, Lcom/airbnb/lottie/OooO0o0;->OooO0O0(Ljava/lang/String;)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOoOO(F)V

    return-void

    :cond_8
    :goto_2
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOO0o:Ljava/lang/String;

    invoke-static {p0}, Lcom/airbnb/lottie/OooO0o0;->OooO0O0(Ljava/lang/String;)F

    return-void
.end method

.method public OooO0oO(Ljava/lang/Object;Lcom/airbnb/lottie/o00ooo/OooOO0;)V
    .locals 0
    .param p2    # Lcom/airbnb/lottie/o00ooo/OooOO0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOo0:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooO0OO(Ljava/lang/Object;Lcom/airbnb/lottie/o00ooo/OooOO0;)Z

    return-void
.end method

.method public OooO0oo(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;)V
    .locals 0
    .param p1    # Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOo00:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method abstract OooOOoo(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
.end method

.method OooOo0()Lcom/airbnb/lottie/model/layer/OooO0oO;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOOO:Lcom/airbnb/lottie/model/layer/OooO0oO;

    return-object p0
.end method

.method OooOo0O()Z
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOOo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOO0;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOO0;->OooO00o()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method OooOo0o()Z
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOo0:Lcom/airbnb/lottie/model/layer/OooO0OO;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method OooOoo(Lcom/airbnb/lottie/model/OooO0o0;ILjava/util/List;Lcom/airbnb/lottie/model/OooO0o0;)V
    .locals 0

    return-void
.end method

.method public OooOoo0(Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOo00:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method OooOooO(Lcom/airbnb/lottie/model/layer/OooO0OO;)V
    .locals 0
    .param p1    # Lcom/airbnb/lottie/model/layer/OooO0OO;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOo0:Lcom/airbnb/lottie/model/layer/OooO0OO;

    return-void
.end method

.method OooOooo(Lcom/airbnb/lottie/model/layer/OooO0OO;)V
    .locals 0
    .param p1    # Lcom/airbnb/lottie/model/layer/OooO0OO;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOo:Lcom/airbnb/lottie/model/layer/OooO0OO;

    return-void
.end method

.method Oooo000(F)V
    .locals 3
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOo0:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOo0;->OooOO0(F)V

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOOo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOO0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOOo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOO0;

    invoke-virtual {v2}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOO0;->OooO00o()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOOo:Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOO0;

    invoke-virtual {v2}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooOOO0;->OooO00o()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {v2, p1}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooOO0o(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOOO:Lcom/airbnb/lottie/model/layer/OooO0oO;

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/OooO0oO;->OooOo00()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOOO:Lcom/airbnb/lottie/model/layer/OooO0oO;

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/OooO0oO;->OooOo00()F

    move-result v0

    div-float/2addr p1, v0

    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOo0:Lcom/airbnb/lottie/model/layer/OooO0OO;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOOO:Lcom/airbnb/lottie/model/layer/OooO0oO;

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/OooO0oO;->OooOo00()F

    move-result v0

    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOo0:Lcom/airbnb/lottie/model/layer/OooO0OO;

    mul-float/2addr v0, p1

    invoke-virtual {v2, v0}, Lcom/airbnb/lottie/model/layer/OooO0OO;->Oooo000(F)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOo00:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOo00:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/o00O0O/OooO0OO/OooO0oO;->OooOO0o(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/OooO0OO;->OooOOOO:Lcom/airbnb/lottie/model/layer/OooO0oO;

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/OooO0oO;->OooO0oO()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
