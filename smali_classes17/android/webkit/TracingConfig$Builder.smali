.class public Landroid/webkit/TracingConfig$Builder;
.super Ljava/lang/Object;
.source "TracingConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/TracingConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mCustomIncludedCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPredefinedCategories:I

.field private mTracingMode:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/TracingConfig$Builder;->mPredefinedCategories:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/webkit/TracingConfig$Builder;->mCustomIncludedCategories:Ljava/util/List;

    const/4 v0, 0x1

    iput v0, p0, Landroid/webkit/TracingConfig$Builder;->mTracingMode:I

    return-void
.end method


# virtual methods
.method public addCategories(Ljava/util/Collection;)Landroid/webkit/TracingConfig$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/TracingConfig$Builder;"
        }
    .end annotation

    iget-object v0, p0, Landroid/webkit/TracingConfig$Builder;->mCustomIncludedCategories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs addCategories([I)Landroid/webkit/TracingConfig$Builder;
    .registers 6

    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_e

    aget v2, p1, v1

    iget v3, p0, Landroid/webkit/TracingConfig$Builder;->mPredefinedCategories:I

    or-int/2addr v3, v2

    iput v3, p0, Landroid/webkit/TracingConfig$Builder;->mPredefinedCategories:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_e
    return-object p0
.end method

.method public varargs addCategories([Ljava/lang/String;)Landroid/webkit/TracingConfig$Builder;
    .registers 6

    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_e

    aget-object v2, p1, v1

    iget-object v3, p0, Landroid/webkit/TracingConfig$Builder;->mCustomIncludedCategories:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_e
    return-object p0
.end method

.method public build()Landroid/webkit/TracingConfig;
    .registers 5

    new-instance v0, Landroid/webkit/TracingConfig;

    iget v1, p0, Landroid/webkit/TracingConfig$Builder;->mPredefinedCategories:I

    iget-object v2, p0, Landroid/webkit/TracingConfig$Builder;->mCustomIncludedCategories:Ljava/util/List;

    iget v3, p0, Landroid/webkit/TracingConfig$Builder;->mTracingMode:I

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/TracingConfig;-><init>(ILjava/util/List;I)V

    return-object v0
.end method

.method public setTracingMode(I)Landroid/webkit/TracingConfig$Builder;
    .registers 2

    iput p1, p0, Landroid/webkit/TracingConfig$Builder;->mTracingMode:I

    return-object p0
.end method
