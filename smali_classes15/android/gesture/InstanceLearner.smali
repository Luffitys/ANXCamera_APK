.class Landroid/gesture/InstanceLearner;
.super Landroid/gesture/Learner;
.source "InstanceLearner.java"


# static fields
.field private static final sComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/gesture/Prediction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/gesture/InstanceLearner$1;

    invoke-direct {v0}, Landroid/gesture/InstanceLearner$1;-><init>()V

    sput-object v0, Landroid/gesture/InstanceLearner;->sComparator:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/gesture/Learner;-><init>()V

    return-void
.end method


# virtual methods
.method classify(II[F)Ljava/util/ArrayList;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[F)",
            "Ljava/util/ArrayList<",
            "Landroid/gesture/Prediction;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/gesture/InstanceLearner;->getInstances()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    const/4 v5, 0x0

    :goto_15
    if-ge v5, v3, :cond_6d

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/gesture/Instance;

    iget-object v7, v6, Landroid/gesture/Instance;->vector:[F

    array-length v7, v7

    array-length v8, v0

    if-eq v7, v8, :cond_28

    move/from16 v8, p1

    move/from16 v9, p2

    goto :goto_6a

    :cond_28
    const/4 v7, 0x2

    move/from16 v8, p1

    if-ne v8, v7, :cond_37

    iget-object v7, v6, Landroid/gesture/Instance;->vector:[F

    move/from16 v9, p2

    invoke-static {v7, v0, v9}, Landroid/gesture/GestureUtils;->minimumCosineDistance([F[FI)F

    move-result v7

    float-to-double v10, v7

    goto :goto_40

    :cond_37
    move/from16 v9, p2

    iget-object v7, v6, Landroid/gesture/Instance;->vector:[F

    invoke-static {v7, v0}, Landroid/gesture/GestureUtils;->squaredEuclideanDistance([F[F)F

    move-result v7

    float-to-double v10, v7

    :goto_40
    const-wide/16 v12, 0x0

    cmpl-double v7, v10, v12

    if-nez v7, :cond_4c

    const-wide v12, 0x7fefffffffffffffL    # Double.MAX_VALUE

    goto :goto_4f

    :cond_4c
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    div-double/2addr v12, v10

    :goto_4f
    iget-object v7, v6, Landroid/gesture/Instance;->label:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    if-eqz v7, :cond_61

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    cmpl-double v14, v12, v14

    if-lez v14, :cond_6a

    :cond_61
    iget-object v14, v6, Landroid/gesture/Instance;->label:Ljava/lang/String;

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    invoke-virtual {v4, v14, v15}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6a
    :goto_6a
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    :cond_6d
    move/from16 v8, p1

    move/from16 v9, p2

    invoke-virtual {v4}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_79
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_98

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    new-instance v7, Landroid/gesture/Prediction;

    invoke-direct {v7, v6, v10, v11}, Landroid/gesture/Prediction;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_79

    :cond_98
    sget-object v5, Landroid/gesture/InstanceLearner;->sComparator:Ljava/util/Comparator;

    invoke-static {v1, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v1
.end method
