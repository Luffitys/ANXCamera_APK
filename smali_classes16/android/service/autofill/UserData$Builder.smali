.class public final Landroid/service/autofill/UserData$Builder;
.super Ljava/lang/Object;
.source "UserData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/UserData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mCategoryAlgorithms:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCategoryArgs:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mCategoryIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultAlgorithm:Ljava/lang/String;

.field private mDefaultArgs:Landroid/os/Bundle;

.field private mDestroyed:Z

.field private final mId:Ljava/lang/String;

.field private final mUniqueCategoryIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUniqueValueCategoryPairs:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "id"

    invoke-direct {p0, v0, p1}, Landroid/service/autofill/UserData$Builder;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/UserData$Builder;->mId:Ljava/lang/String;

    const-string v0, "categoryId"

    invoke-direct {p0, v0, p3}, Landroid/service/autofill/UserData$Builder;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0, p2}, Landroid/service/autofill/UserData$Builder;->checkValidValue(Ljava/lang/String;)V

    invoke-static {}, Landroid/service/autofill/UserData;->getMaxUserDataSize()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/service/autofill/UserData$Builder;->mCategoryIds:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/service/autofill/UserData$Builder;->mValues:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v1, p0, Landroid/service/autofill/UserData$Builder;->mUniqueValueCategoryPairs:Landroid/util/ArraySet;

    new-instance v1, Landroid/util/ArraySet;

    invoke-static {}, Landroid/service/autofill/UserData;->getMaxCategoryCount()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v1, p0, Landroid/service/autofill/UserData$Builder;->mUniqueCategoryIds:Landroid/util/ArraySet;

    invoke-direct {p0, p2, p3}, Landroid/service/autofill/UserData$Builder;->addMapping(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Landroid/service/autofill/UserData$Builder;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/service/autofill/UserData$Builder;->mId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/service/autofill/UserData$Builder;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Landroid/service/autofill/UserData$Builder;->mCategoryIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Landroid/service/autofill/UserData$Builder;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Landroid/service/autofill/UserData$Builder;->mValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Landroid/service/autofill/UserData$Builder;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/service/autofill/UserData$Builder;->mDefaultAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Landroid/service/autofill/UserData$Builder;)Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/service/autofill/UserData$Builder;->mDefaultArgs:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$500(Landroid/service/autofill/UserData$Builder;)Landroid/util/ArrayMap;
    .registers 2

    iget-object v0, p0, Landroid/service/autofill/UserData$Builder;->mCategoryAlgorithms:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$600(Landroid/service/autofill/UserData$Builder;)Landroid/util/ArrayMap;
    .registers 2

    iget-object v0, p0, Landroid/service/autofill/UserData$Builder;->mCategoryArgs:Landroid/util/ArrayMap;

    return-object v0
.end method

.method private addMapping(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/UserData$Builder;->mUniqueValueCategoryPairs:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    const-string v1, "UserData"

    const-string v2, "Ignoring entry with same value / category"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_24
    iget-object v1, p0, Landroid/service/autofill/UserData$Builder;->mCategoryIds:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/service/autofill/UserData$Builder;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/service/autofill/UserData$Builder;->mUniqueCategoryIds:Landroid/util/ArraySet;

    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/service/autofill/UserData$Builder;->mUniqueValueCategoryPairs:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "%s cannot be empty"

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object p2
.end method

.method private checkValidValue(Ljava/lang/String;)V
    .registers 7

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {}, Landroid/service/autofill/UserData;->getMinValueLength()I

    move-result v1

    invoke-static {}, Landroid/service/autofill/UserData;->getMaxValueLength()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "value length ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    return-void
.end method

.method private throwIfDestroyed()V
    .registers 3

    iget-boolean v0, p0, Landroid/service/autofill/UserData$Builder;->mDestroyed:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already called #build()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)Landroid/service/autofill/UserData$Builder;
    .registers 9

    invoke-direct {p0}, Landroid/service/autofill/UserData$Builder;->throwIfDestroyed()V

    const-string v0, "categoryId"

    invoke-direct {p0, v0, p2}, Landroid/service/autofill/UserData$Builder;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/service/autofill/UserData$Builder;->checkValidValue(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/autofill/UserData$Builder;->mUniqueCategoryIds:Landroid/util/ArraySet;

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "already added "

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_43

    iget-object v0, p0, Landroid/service/autofill/UserData$Builder;->mUniqueCategoryIds:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    invoke-static {}, Landroid/service/autofill/UserData;->getMaxCategoryCount()I

    move-result v4

    if-ge v0, v4, :cond_25

    move v0, v2

    goto :goto_26

    :cond_25
    move v0, v3

    :goto_26
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/service/autofill/UserData$Builder;->mUniqueCategoryIds:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " unique category ids"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    :cond_43
    iget-object v0, p0, Landroid/service/autofill/UserData$Builder;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {}, Landroid/service/autofill/UserData;->getMaxUserDataSize()I

    move-result v4

    if-ge v0, v4, :cond_50

    goto :goto_51

    :cond_50
    move v2, v3

    :goto_51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/service/autofill/UserData$Builder;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " elements"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/service/autofill/UserData$Builder;->addMapping(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public build()Landroid/service/autofill/UserData;
    .registers 3

    invoke-direct {p0}, Landroid/service/autofill/UserData$Builder;->throwIfDestroyed()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/autofill/UserData$Builder;->mDestroyed:Z

    new-instance v0, Landroid/service/autofill/UserData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/autofill/UserData;-><init>(Landroid/service/autofill/UserData$Builder;Landroid/service/autofill/UserData$1;)V

    return-object v0
.end method

.method public setFieldClassificationAlgorithm(Ljava/lang/String;Landroid/os/Bundle;)Landroid/service/autofill/UserData$Builder;
    .registers 3

    invoke-direct {p0}, Landroid/service/autofill/UserData$Builder;->throwIfDestroyed()V

    iput-object p1, p0, Landroid/service/autofill/UserData$Builder;->mDefaultAlgorithm:Ljava/lang/String;

    iput-object p2, p0, Landroid/service/autofill/UserData$Builder;->mDefaultArgs:Landroid/os/Bundle;

    return-object p0
.end method

.method public setFieldClassificationAlgorithmForCategory(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/service/autofill/UserData$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/service/autofill/UserData$Builder;->throwIfDestroyed()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/service/autofill/UserData$Builder;->mCategoryAlgorithms:Landroid/util/ArrayMap;

    if-nez v0, :cond_15

    new-instance v0, Landroid/util/ArrayMap;

    invoke-static {}, Landroid/service/autofill/UserData;->getMaxCategoryCount()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Landroid/service/autofill/UserData$Builder;->mCategoryAlgorithms:Landroid/util/ArrayMap;

    :cond_15
    iget-object v0, p0, Landroid/service/autofill/UserData$Builder;->mCategoryArgs:Landroid/util/ArrayMap;

    if-nez v0, :cond_24

    new-instance v0, Landroid/util/ArrayMap;

    invoke-static {}, Landroid/service/autofill/UserData;->getMaxCategoryCount()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Landroid/service/autofill/UserData$Builder;->mCategoryArgs:Landroid/util/ArrayMap;

    :cond_24
    iget-object v0, p0, Landroid/service/autofill/UserData$Builder;->mCategoryAlgorithms:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/service/autofill/UserData$Builder;->mCategoryArgs:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
