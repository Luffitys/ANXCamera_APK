.class public Landroid/service/autofill/ImageTransformation$Builder;
.super Ljava/lang/Object;
.source "ImageTransformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/ImageTransformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mDestroyed:Z

.field private final mId:Landroid/view/autofill/AutofillId;

.field private final mOptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/service/autofill/ImageTransformation$Option;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/autofill/AutofillId;Ljava/util/regex/Pattern;I)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/ImageTransformation$Builder;->mOptions:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillId;

    iput-object v0, p0, Landroid/service/autofill/ImageTransformation$Builder;->mId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p0, p2, p3}, Landroid/service/autofill/ImageTransformation$Builder;->addOption(Ljava/util/regex/Pattern;I)Landroid/service/autofill/ImageTransformation$Builder;

    return-void
.end method

.method public constructor <init>(Landroid/view/autofill/AutofillId;Ljava/util/regex/Pattern;ILjava/lang/CharSequence;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/ImageTransformation$Builder;->mOptions:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillId;

    iput-object v0, p0, Landroid/service/autofill/ImageTransformation$Builder;->mId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p0, p2, p3, p4}, Landroid/service/autofill/ImageTransformation$Builder;->addOption(Ljava/util/regex/Pattern;ILjava/lang/CharSequence;)Landroid/service/autofill/ImageTransformation$Builder;

    return-void
.end method

.method static synthetic access$000(Landroid/service/autofill/ImageTransformation$Builder;)Landroid/view/autofill/AutofillId;
    .registers 2

    iget-object v0, p0, Landroid/service/autofill/ImageTransformation$Builder;->mId:Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method static synthetic access$100(Landroid/service/autofill/ImageTransformation$Builder;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Landroid/service/autofill/ImageTransformation$Builder;->mOptions:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addOptionInternal(Ljava/util/regex/Pattern;ILjava/lang/CharSequence;)V
    .registers 6

    invoke-direct {p0}, Landroid/service/autofill/ImageTransformation$Builder;->throwIfDestroyed()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iget-object v0, p0, Landroid/service/autofill/ImageTransformation$Builder;->mOptions:Ljava/util/ArrayList;

    new-instance v1, Landroid/service/autofill/ImageTransformation$Option;

    invoke-direct {v1, p1, p2, p3}, Landroid/service/autofill/ImageTransformation$Option;-><init>(Ljava/util/regex/Pattern;ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private throwIfDestroyed()V
    .registers 3

    iget-boolean v0, p0, Landroid/service/autofill/ImageTransformation$Builder;->mDestroyed:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Already called build()"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addOption(Ljava/util/regex/Pattern;I)Landroid/service/autofill/ImageTransformation$Builder;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/service/autofill/ImageTransformation$Builder;->addOptionInternal(Ljava/util/regex/Pattern;ILjava/lang/CharSequence;)V

    return-object p0
.end method

.method public addOption(Ljava/util/regex/Pattern;ILjava/lang/CharSequence;)Landroid/service/autofill/ImageTransformation$Builder;
    .registers 5

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-direct {p0, p1, p2, v0}, Landroid/service/autofill/ImageTransformation$Builder;->addOptionInternal(Ljava/util/regex/Pattern;ILjava/lang/CharSequence;)V

    return-object p0
.end method

.method public build()Landroid/service/autofill/ImageTransformation;
    .registers 3

    invoke-direct {p0}, Landroid/service/autofill/ImageTransformation$Builder;->throwIfDestroyed()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/autofill/ImageTransformation$Builder;->mDestroyed:Z

    new-instance v0, Landroid/service/autofill/ImageTransformation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/autofill/ImageTransformation;-><init>(Landroid/service/autofill/ImageTransformation$Builder;Landroid/service/autofill/ImageTransformation$1;)V

    return-object v0
.end method
