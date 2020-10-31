.class public final Landroid/view/textclassifier/TextLinks$Builder;
.super Ljava/lang/Object;
.source "TextLinks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextLinks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mExtras:Landroid/os/Bundle;

.field private final mFullText:Ljava/lang/String;

.field private final mLinks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/textclassifier/TextLinks$TextLink;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/view/textclassifier/TextLinks$Builder;->mFullText:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/TextLinks$Builder;->mLinks:Ljava/util/ArrayList;

    return-void
.end method

.method private addLink(IILjava/util/Map;Landroid/os/Bundle;Landroid/text/style/URLSpan;)Landroid/view/textclassifier/TextLinks$Builder;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/os/Bundle;",
            "Landroid/text/style/URLSpan;",
            ")",
            "Landroid/view/textclassifier/TextLinks$Builder;"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$Builder;->mLinks:Ljava/util/ArrayList;

    new-instance v8, Landroid/view/textclassifier/TextLinks$TextLink;

    new-instance v4, Landroid/view/textclassifier/EntityConfidence;

    invoke-direct {v4, p3}, Landroid/view/textclassifier/EntityConfidence;-><init>(Ljava/util/Map;)V

    const/4 v7, 0x0

    move-object v1, v8

    move v2, p1

    move v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v7}, Landroid/view/textclassifier/TextLinks$TextLink;-><init>(IILandroid/view/textclassifier/EntityConfidence;Landroid/os/Bundle;Landroid/text/style/URLSpan;Landroid/view/textclassifier/TextLinks$1;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method


# virtual methods
.method public addLink(IILjava/util/Map;)Landroid/view/textclassifier/TextLinks$Builder;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;)",
            "Landroid/view/textclassifier/TextLinks$Builder;"
        }
    .end annotation

    sget-object v4, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/view/textclassifier/TextLinks$Builder;->addLink(IILjava/util/Map;Landroid/os/Bundle;Landroid/text/style/URLSpan;)Landroid/view/textclassifier/TextLinks$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addLink(IILjava/util/Map;Landroid/os/Bundle;)Landroid/view/textclassifier/TextLinks$Builder;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/view/textclassifier/TextLinks$Builder;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/textclassifier/TextLinks$Builder;->addLink(IILjava/util/Map;Landroid/os/Bundle;Landroid/text/style/URLSpan;)Landroid/view/textclassifier/TextLinks$Builder;

    move-result-object v0

    return-object v0
.end method

.method addLink(IILjava/util/Map;Landroid/text/style/URLSpan;)Landroid/view/textclassifier/TextLinks$Builder;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/text/style/URLSpan;",
            ")",
            "Landroid/view/textclassifier/TextLinks$Builder;"
        }
    .end annotation

    sget-object v4, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/textclassifier/TextLinks$Builder;->addLink(IILjava/util/Map;Landroid/os/Bundle;Landroid/text/style/URLSpan;)Landroid/view/textclassifier/TextLinks$Builder;

    move-result-object v0

    return-object v0
.end method

.method public build()Landroid/view/textclassifier/TextLinks;
    .registers 6

    new-instance v0, Landroid/view/textclassifier/TextLinks;

    iget-object v1, p0, Landroid/view/textclassifier/TextLinks$Builder;->mFullText:Ljava/lang/String;

    iget-object v2, p0, Landroid/view/textclassifier/TextLinks$Builder;->mLinks:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/view/textclassifier/TextLinks$Builder;->mExtras:Landroid/os/Bundle;

    if-nez v3, :cond_c

    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_c
    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/textclassifier/TextLinks;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Landroid/os/Bundle;Landroid/view/textclassifier/TextLinks$1;)V

    return-object v0
.end method

.method public clearTextLinks()Landroid/view/textclassifier/TextLinks$Builder;
    .registers 2

    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$Builder;->mLinks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/view/textclassifier/TextLinks$Builder;
    .registers 2

    iput-object p1, p0, Landroid/view/textclassifier/TextLinks$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method
