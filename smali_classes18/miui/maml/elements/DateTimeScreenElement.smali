.class public Lmiui/maml/elements/DateTimeScreenElement;
.super Lmiui/maml/elements/TextScreenElement;
.source "DateTimeScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "DateTime"


# instance fields
.field private mDateFormatter:Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;

.field private mDescriptionDateFormatter:Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 14

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/TextScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    invoke-virtual {p0}, Lmiui/maml/elements/DateTimeScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string v1, "value"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    invoke-virtual {p0}, Lmiui/maml/elements/DateTimeScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    const-string v2, "timeZoneId"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    new-instance v2, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;

    iget-object v3, p0, Lmiui/maml/elements/DateTimeScreenElement;->mFormatter:Lmiui/maml/util/TextFormatter;

    invoke-direct {v2, p0, v3, v0, v1}, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;-><init>(Lmiui/maml/elements/DateTimeScreenElement;Lmiui/maml/util/TextFormatter;Lmiui/maml/data/Expression;Lmiui/maml/data/Expression;)V

    iput-object v2, p0, Lmiui/maml/elements/DateTimeScreenElement;->mDateFormatter:Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;

    const-string v2, "contentDescriptionFormat"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_4e

    iput-boolean v3, p0, Lmiui/maml/elements/DateTimeScreenElement;->mHasContentDescription:Z

    invoke-virtual {p0}, Lmiui/maml/elements/DateTimeScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v7, "contentDescriptionFormat"

    move-object v5, p1

    invoke-static/range {v4 .. v10}, Lmiui/maml/util/TextFormatter;->fromElement(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/util/TextFormatter;

    move-result-object v2

    new-instance v3, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;

    invoke-direct {v3, p0, v2, v0, v1}, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;-><init>(Lmiui/maml/elements/DateTimeScreenElement;Lmiui/maml/util/TextFormatter;Lmiui/maml/data/Expression;Lmiui/maml/data/Expression;)V

    iput-object v3, p0, Lmiui/maml/elements/DateTimeScreenElement;->mDescriptionDateFormatter:Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;

    goto :goto_73

    :cond_4e
    const-string v2, "contentDescriptionFormatExp"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_73

    iput-boolean v3, p0, Lmiui/maml/elements/DateTimeScreenElement;->mHasContentDescription:Z

    invoke-virtual {p0}, Lmiui/maml/elements/DateTimeScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "contentDescriptionFormatExp"

    move-object v5, p1

    invoke-static/range {v4 .. v10}, Lmiui/maml/util/TextFormatter;->fromElement(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/util/TextFormatter;

    move-result-object v2

    new-instance v3, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;

    invoke-direct {v3, p0, v2, v0, v1}, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;-><init>(Lmiui/maml/elements/DateTimeScreenElement;Lmiui/maml/util/TextFormatter;Lmiui/maml/data/Expression;Lmiui/maml/data/Expression;)V

    iput-object v3, p0, Lmiui/maml/elements/DateTimeScreenElement;->mDescriptionDateFormatter:Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;

    goto :goto_74

    :cond_73
    :goto_73
    nop

    :goto_74
    iget-boolean v2, p0, Lmiui/maml/elements/DateTimeScreenElement;->mHasContentDescription:Z

    if-eqz v2, :cond_7d

    iget-object v2, p0, Lmiui/maml/elements/DateTimeScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v2, p0}, Lmiui/maml/ScreenElementRoot;->addAccessibleElements(Lmiui/maml/elements/AnimatedScreenElement;)V

    :cond_7d
    return-void
.end method


# virtual methods
.method public getContentDescription()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/DateTimeScreenElement;->mDescriptionDateFormatter:Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_9
    invoke-super {p0}, Lmiui/maml/elements/TextScreenElement;->getContentDescription()Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method protected getText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/DateTimeScreenElement;->mDateFormatter:Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;

    invoke-virtual {v0}, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resume()V
    .registers 2

    invoke-super {p0}, Lmiui/maml/elements/TextScreenElement;->resume()V

    iget-object v0, p0, Lmiui/maml/elements/DateTimeScreenElement;->mDateFormatter:Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;

    invoke-virtual {v0}, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->resetCalendar()V

    iget-object v0, p0, Lmiui/maml/elements/DateTimeScreenElement;->mDescriptionDateFormatter:Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->resetCalendar()V

    :cond_f
    return-void
.end method
