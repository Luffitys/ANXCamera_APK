.class public final Lmiui/maml/shader/ShaderElement$GradientStops;
.super Ljava/lang/Object;
.source "ShaderElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/shader/ShaderElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "GradientStops"
.end annotation


# instance fields
.field private mColors:[I

.field protected mGradientStopArr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/maml/shader/ShaderElement$GradientStop;",
            ">;"
        }
    .end annotation
.end field

.field private mPositions:[F

.field final synthetic this$0:Lmiui/maml/shader/ShaderElement;


# direct methods
.method protected constructor <init>(Lmiui/maml/shader/ShaderElement;)V
    .registers 3

    iput-object p1, p0, Lmiui/maml/shader/ShaderElement$GradientStops;->this$0:Lmiui/maml/shader/ShaderElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/shader/ShaderElement$GradientStops;->mGradientStopArr:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Lmiui/maml/shader/ShaderElement$GradientStop;)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/shader/ShaderElement$GradientStops;->mGradientStopArr:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getColors()[I
    .registers 2

    iget-object v0, p0, Lmiui/maml/shader/ShaderElement$GradientStops;->mColors:[I

    return-object v0
.end method

.method public getPositions()[F
    .registers 2

    iget-object v0, p0, Lmiui/maml/shader/ShaderElement$GradientStops;->mPositions:[F

    return-object v0
.end method

.method public init()V
    .registers 2

    invoke-virtual {p0}, Lmiui/maml/shader/ShaderElement$GradientStops;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lmiui/maml/shader/ShaderElement$GradientStops;->mColors:[I

    invoke-virtual {p0}, Lmiui/maml/shader/ShaderElement$GradientStops;->size()I

    move-result v0

    new-array v0, v0, [F

    iput-object v0, p0, Lmiui/maml/shader/ShaderElement$GradientStops;->mPositions:[F

    return-void
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lmiui/maml/shader/ShaderElement$GradientStops;->mGradientStopArr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public update()V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p0}, Lmiui/maml/shader/ShaderElement$GradientStops;->size()I

    move-result v2

    if-ge v1, v2, :cond_3b

    iget-object v2, p0, Lmiui/maml/shader/ShaderElement$GradientStops;->mGradientStopArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/shader/ShaderElement$GradientStop;

    invoke-virtual {v2}, Lmiui/maml/shader/ShaderElement$GradientStop;->getColor()I

    move-result v2

    iget-object v3, p0, Lmiui/maml/shader/ShaderElement$GradientStops;->mColors:[I

    aget v3, v3, v1

    if-eq v2, v3, :cond_1b

    const/4 v0, 0x1

    :cond_1b
    iget-object v3, p0, Lmiui/maml/shader/ShaderElement$GradientStops;->mColors:[I

    aput v2, v3, v1

    iget-object v3, p0, Lmiui/maml/shader/ShaderElement$GradientStops;->mGradientStopArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/shader/ShaderElement$GradientStop;

    invoke-virtual {v3}, Lmiui/maml/shader/ShaderElement$GradientStop;->getPosition()F

    move-result v3

    iget-object v4, p0, Lmiui/maml/shader/ShaderElement$GradientStops;->mPositions:[F

    aget v4, v4, v1

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_34

    const/4 v0, 0x1

    :cond_34
    iget-object v4, p0, Lmiui/maml/shader/ShaderElement$GradientStops;->mPositions:[F

    aput v3, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3b
    if-eqz v0, :cond_42

    iget-object v1, p0, Lmiui/maml/shader/ShaderElement$GradientStops;->this$0:Lmiui/maml/shader/ShaderElement;

    invoke-virtual {v1}, Lmiui/maml/shader/ShaderElement;->onGradientStopsChanged()V

    :cond_42
    return-void
.end method
