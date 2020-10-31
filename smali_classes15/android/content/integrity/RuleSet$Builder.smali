.class public Landroid/content/integrity/RuleSet$Builder;
.super Ljava/lang/Object;
.source "RuleSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/integrity/RuleSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/integrity/Rule;",
            ">;"
        }
    .end annotation
.end field

.field private mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/integrity/RuleSet$Builder;->mRules:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addRules(Ljava/util/List;)Landroid/content/integrity/RuleSet$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/integrity/Rule;",
            ">;)",
            "Landroid/content/integrity/RuleSet$Builder;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/integrity/RuleSet$Builder;->mRules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public build()Landroid/content/integrity/RuleSet;
    .registers 5

    iget-object v0, p0, Landroid/content/integrity/RuleSet$Builder;->mVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/content/integrity/RuleSet;

    iget-object v1, p0, Landroid/content/integrity/RuleSet$Builder;->mVersion:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/integrity/RuleSet$Builder;->mRules:Ljava/util/List;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/content/integrity/RuleSet;-><init>(Ljava/lang/String;Ljava/util/List;Landroid/content/integrity/RuleSet$1;)V

    return-object v0
.end method

.method public setVersion(Ljava/lang/String;)Landroid/content/integrity/RuleSet$Builder;
    .registers 2

    iput-object p1, p0, Landroid/content/integrity/RuleSet$Builder;->mVersion:Ljava/lang/String;

    return-object p0
.end method
