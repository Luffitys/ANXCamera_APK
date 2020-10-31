.class public Landroid/content/ContentProviderOperation$Builder;
.super Ljava/lang/Object;
.source "ContentProviderOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentProviderOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mArg:Ljava/lang/String;

.field private mExceptionAllowed:Z

.field private mExpectedCount:Ljava/lang/Integer;

.field private mExtras:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mMethod:Ljava/lang/String;

.field private mSelection:Ljava/lang/String;

.field private mSelectionArgs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mType:I

.field private final mUri:Landroid/net/Uri;

.field private mValues:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mYieldAllowed:Z


# direct methods
.method private constructor <init>(ILandroid/net/Uri;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Landroid/content/ContentProviderOperation$Builder;-><init>(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(ILandroid/net/Uri;Landroid/content/ContentProviderOperation$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/content/ContentProviderOperation$Builder;-><init>(ILandroid/net/Uri;)V

    return-void
.end method

.method private constructor <init>(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mUri:Landroid/net/Uri;

    iput-object p3, p0, Landroid/content/ContentProviderOperation$Builder;->mMethod:Ljava/lang/String;

    iput-object p4, p0, Landroid/content/ContentProviderOperation$Builder;->mArg:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentProviderOperation$1;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/ContentProviderOperation$Builder;-><init>(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Landroid/content/ContentProviderOperation$Builder;)I
    .registers 2

    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    return v0
.end method

.method static synthetic access$100(Landroid/content/ContentProviderOperation$Builder;)Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/content/ContentProviderOperation$Builder;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/ContentProviderOperation$Builder;->mExceptionAllowed:Z

    return v0
.end method

.method static synthetic access$200(Landroid/content/ContentProviderOperation$Builder;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mMethod:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Landroid/content/ContentProviderOperation$Builder;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mArg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Landroid/content/ContentProviderOperation$Builder;)Landroid/util/ArrayMap;
    .registers 2

    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$500(Landroid/content/ContentProviderOperation$Builder;)Landroid/util/ArrayMap;
    .registers 2

    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mExtras:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$600(Landroid/content/ContentProviderOperation$Builder;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mSelection:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Landroid/content/ContentProviderOperation$Builder;)Landroid/util/SparseArray;
    .registers 2

    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mSelectionArgs:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$800(Landroid/content/ContentProviderOperation$Builder;)Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mExpectedCount:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$900(Landroid/content/ContentProviderOperation$Builder;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/ContentProviderOperation$Builder;->mYieldAllowed:Z

    return v0
.end method

.method private assertExtrasAllowed()V
    .registers 4

    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2f

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2f

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2f

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2f

    const/4 v1, 0x5

    if-ne v0, v1, :cond_12

    goto :goto_2f

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Extras not supported for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    :goto_2f
    nop

    return-void
.end method

.method private assertSelectionAllowed()V
    .registers 4

    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_29

    const/4 v1, 0x3

    if-eq v0, v1, :cond_29

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c

    goto :goto_29

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selection not supported for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    :goto_29
    nop

    return-void
.end method

.method private assertValuesAllowed()V
    .registers 4

    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_29

    const/4 v1, 0x2

    if-eq v0, v1, :cond_29

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c

    goto :goto_29

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Values not supported for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    :goto_29
    nop

    return-void
.end method

.method private ensureExtras()V
    .registers 2

    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mExtras:Landroid/util/ArrayMap;

    if-nez v0, :cond_b

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mExtras:Landroid/util/ArrayMap;

    :cond_b
    return-void
.end method

.method private ensureSelectionArgs()V
    .registers 2

    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mSelectionArgs:Landroid/util/SparseArray;

    if-nez v0, :cond_b

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mSelectionArgs:Landroid/util/SparseArray;

    :cond_b
    return-void
.end method

.method private ensureValues()V
    .registers 2

    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/util/ArrayMap;

    if-nez v0, :cond_b

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/util/ArrayMap;

    :cond_b
    return-void
.end method

.method private setExtra(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    invoke-direct {p0}, Landroid/content/ContentProviderOperation$Builder;->ensureExtras()V

    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mExtras:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/content/ContentProviderOperation$BackReference;

    instance-of v1, p2, Landroid/content/ContentProviderOperation$BackReference;

    if-eqz v0, :cond_11

    if-eqz v1, :cond_16

    :cond_11
    iget-object v2, p0, Landroid/content/ContentProviderOperation$Builder;->mExtras:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    return-void
.end method

.method private setSelectionArg(ILjava/lang/Object;)V
    .registers 6

    invoke-direct {p0}, Landroid/content/ContentProviderOperation$Builder;->ensureSelectionArgs()V

    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mSelectionArgs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/content/ContentProviderOperation$BackReference;

    instance-of v1, p2, Landroid/content/ContentProviderOperation$BackReference;

    if-eqz v0, :cond_11

    if-eqz v1, :cond_16

    :cond_11
    iget-object v2, p0, Landroid/content/ContentProviderOperation$Builder;->mSelectionArgs:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_16
    return-void
.end method

.method private setValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    invoke-direct {p0}, Landroid/content/ContentProviderOperation$Builder;->ensureValues()V

    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/content/ContentProviderOperation$BackReference;

    instance-of v1, p2, Landroid/content/ContentProviderOperation$BackReference;

    if-eqz v0, :cond_11

    if-eqz v1, :cond_16

    :cond_11
    iget-object v2, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    return-void
.end method


# virtual methods
.method public build()Landroid/content/ContentProviderOperation;
    .registers 4

    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const-string v1, "Empty values"

    const/4 v2, 0x2

    if-ne v0, v2, :cond_18

    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/util/ArrayMap;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_18

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    :goto_18
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_32

    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/util/ArrayMap;

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b

    :cond_27
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mExpectedCount:Ljava/lang/Integer;

    if-eqz v0, :cond_2c

    :cond_2b
    goto :goto_32

    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    :goto_32
    new-instance v0, Landroid/content/ContentProviderOperation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/content/ContentProviderOperation;-><init>(Landroid/content/ContentProviderOperation$Builder;Landroid/content/ContentProviderOperation$1;)V

    return-object v0
.end method

.method public withExceptionAllowed(Z)Landroid/content/ContentProviderOperation$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/content/ContentProviderOperation$Builder;->mExceptionAllowed:Z

    return-object p0
.end method

.method public withExpectedCount(I)Landroid/content/ContentProviderOperation$Builder;
    .registers 4

    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_15

    const/4 v1, 0x3

    if-eq v0, v1, :cond_15

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c

    goto :goto_15

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "only updates, deletes, and asserts can have expected counts"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    :goto_15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mExpectedCount:Ljava/lang/Integer;

    return-object p0
.end method

.method public withExtra(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    .registers 3

    invoke-direct {p0}, Landroid/content/ContentProviderOperation$Builder;->assertExtrasAllowed()V

    invoke-direct {p0, p1, p2}, Landroid/content/ContentProviderOperation$Builder;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public withExtraBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;
    .registers 5

    invoke-direct {p0}, Landroid/content/ContentProviderOperation$Builder;->assertExtrasAllowed()V

    new-instance v0, Landroid/content/ContentProviderOperation$BackReference;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1, v1}, Landroid/content/ContentProviderOperation$BackReference;-><init>(ILjava/lang/String;Landroid/content/ContentProviderOperation$1;)V

    invoke-direct {p0, p1, v0}, Landroid/content/ContentProviderOperation$Builder;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public withExtraBackReference(Ljava/lang/String;ILjava/lang/String;)Landroid/content/ContentProviderOperation$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/content/ContentProviderOperation$Builder;->assertExtrasAllowed()V

    new-instance v0, Landroid/content/ContentProviderOperation$BackReference;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1}, Landroid/content/ContentProviderOperation$BackReference;-><init>(ILjava/lang/String;Landroid/content/ContentProviderOperation$1;)V

    invoke-direct {p0, p1, v0}, Landroid/content/ContentProviderOperation$Builder;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public withExtras(Landroid/os/Bundle;)Landroid/content/ContentProviderOperation$Builder;
    .registers 5

    invoke-direct {p0}, Landroid/content/ContentProviderOperation$Builder;->assertExtrasAllowed()V

    invoke-direct {p0}, Landroid/content/ContentProviderOperation$Builder;->ensureExtras()V

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_e

    :cond_22
    return-object p0
.end method

.method public withFailureAllowed(Z)Landroid/content/ContentProviderOperation$Builder;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/content/ContentProviderOperation$Builder;->withExceptionAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;
    .registers 5

    invoke-direct {p0}, Landroid/content/ContentProviderOperation$Builder;->assertSelectionAllowed()V

    iput-object p1, p0, Landroid/content/ContentProviderOperation$Builder;->mSelection:Ljava/lang/String;

    if-eqz p2, :cond_16

    invoke-direct {p0}, Landroid/content/ContentProviderOperation$Builder;->ensureSelectionArgs()V

    const/4 v0, 0x0

    :goto_b
    array-length v1, p2

    if-ge v0, v1, :cond_16

    aget-object v1, p2, v0

    invoke-direct {p0, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->setSelectionArg(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_16
    return-object p0
.end method

.method public withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;
    .registers 5

    invoke-direct {p0}, Landroid/content/ContentProviderOperation$Builder;->assertSelectionAllowed()V

    new-instance v0, Landroid/content/ContentProviderOperation$BackReference;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1, v1}, Landroid/content/ContentProviderOperation$BackReference;-><init>(ILjava/lang/String;Landroid/content/ContentProviderOperation$1;)V

    invoke-direct {p0, p1, v0}, Landroid/content/ContentProviderOperation$Builder;->setSelectionArg(ILjava/lang/Object;)V

    return-object p0
.end method

.method public withSelectionBackReference(IILjava/lang/String;)Landroid/content/ContentProviderOperation$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/content/ContentProviderOperation$Builder;->assertSelectionAllowed()V

    new-instance v0, Landroid/content/ContentProviderOperation$BackReference;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1}, Landroid/content/ContentProviderOperation$BackReference;-><init>(ILjava/lang/String;Landroid/content/ContentProviderOperation$1;)V

    invoke-direct {p0, p1, v0}, Landroid/content/ContentProviderOperation$Builder;->setSelectionArg(ILjava/lang/Object;)V

    return-object p0
.end method

.method public withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/content/ContentProviderOperation$Builder;->assertValuesAllowed()V

    invoke-static {p2}, Landroid/content/ContentValues;->isSupportedValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0, p1, p2}, Landroid/content/ContentProviderOperation$Builder;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad value type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;
    .registers 5

    invoke-direct {p0}, Landroid/content/ContentProviderOperation$Builder;->assertValuesAllowed()V

    new-instance v0, Landroid/content/ContentProviderOperation$BackReference;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1, v1}, Landroid/content/ContentProviderOperation$BackReference;-><init>(ILjava/lang/String;Landroid/content/ContentProviderOperation$1;)V

    invoke-direct {p0, p1, v0}, Landroid/content/ContentProviderOperation$Builder;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public withValueBackReference(Ljava/lang/String;ILjava/lang/String;)Landroid/content/ContentProviderOperation$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/content/ContentProviderOperation$Builder;->assertValuesAllowed()V

    new-instance v0, Landroid/content/ContentProviderOperation$BackReference;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1}, Landroid/content/ContentProviderOperation$BackReference;-><init>(ILjava/lang/String;Landroid/content/ContentProviderOperation$1;)V

    invoke-direct {p0, p1, v0}, Landroid/content/ContentProviderOperation$Builder;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public withValueBackReferences(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    .registers 8

    invoke-direct {p0}, Landroid/content/ContentProviderOperation$Builder;->assertValuesAllowed()V

    invoke-virtual {p1}, Landroid/content/ContentValues;->getValues()Landroid/util/ArrayMap;

    move-result-object v0

    const/4 v1, 0x0

    :goto_8
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_2a

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Landroid/content/ContentProviderOperation$BackReference;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v5}, Landroid/content/ContentProviderOperation$BackReference;-><init>(ILjava/lang/String;Landroid/content/ContentProviderOperation$1;)V

    invoke-direct {p0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_2a
    return-object p0
.end method

.method public withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/content/ContentProviderOperation$Builder;->assertValuesAllowed()V

    invoke-direct {p0}, Landroid/content/ContentProviderOperation$Builder;->ensureValues()V

    invoke-virtual {p1}, Landroid/content/ContentValues;->getValues()Landroid/util/ArrayMap;

    move-result-object v0

    const/4 v1, 0x0

    :goto_b
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_21
    return-object p0
.end method

.method public withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/content/ContentProviderOperation$Builder;->mYieldAllowed:Z

    return-object p0
.end method
