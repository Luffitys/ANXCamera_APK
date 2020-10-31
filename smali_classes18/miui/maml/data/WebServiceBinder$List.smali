.class Lmiui/maml/data/WebServiceBinder$List;
.super Ljava/lang/Object;
.source "WebServiceBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/WebServiceBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "List"
.end annotation


# instance fields
.field public mDataPath:Ljava/lang/String;

.field private mList:Lmiui/maml/elements/ListScreenElement;

.field private mName:Ljava/lang/String;

.field private mRoot:Lmiui/maml/ScreenElementRoot;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "path"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder$List;->mDataPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "xpath"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder$List;->mDataPath:Ljava/lang/String;

    :cond_19
    const-string v0, "name"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder$List;->mName:Ljava/lang/String;

    iput-object p2, p0, Lmiui/maml/data/WebServiceBinder$List;->mRoot:Lmiui/maml/ScreenElementRoot;

    return-void
.end method

.method static synthetic access$000(Lmiui/maml/data/WebServiceBinder$List;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder$List;->mName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public fill(Lorg/json/JSONArray;)V
    .registers 13

    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder$List;->mList:Lmiui/maml/elements/ListScreenElement;

    const-string v1, "WebServiceBinder"

    if-nez v0, :cond_2b

    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder$List;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v2, p0, Lmiui/maml/data/WebServiceBinder$List;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lmiui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/ListScreenElement;

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder$List;->mList:Lmiui/maml/elements/ListScreenElement;

    if-nez v0, :cond_2b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to find list: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/maml/data/WebServiceBinder$List;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2b
    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder$List;->mList:Lmiui/maml/elements/ListScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/ListScreenElement;->removeAllItems()V

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_37

    return-void

    :cond_37
    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder$List;->mList:Lmiui/maml/elements/ListScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/ListScreenElement;->getColumnsInfo()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    :goto_44
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_d3

    :try_start_4a
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lorg/json/JSONObject;

    if-nez v6, :cond_54

    goto/16 :goto_cf

    :cond_54
    move-object v6, v5

    check-cast v6, Lorg/json/JSONObject;

    const/4 v7, 0x0

    :goto_58
    if-ge v7, v2, :cond_b0

    const/4 v8, 0x0

    aput-object v8, v3, v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmiui/maml/elements/ListScreenElement$ColumnInfo;

    sget-object v9, Lmiui/maml/data/WebServiceBinder$1;->$SwitchMap$miui$maml$elements$ListScreenElement$ColumnInfo$Type:[I

    iget-object v10, v8, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    invoke-virtual {v10}, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->ordinal()I

    move-result v10

    aget v9, v9, v10

    const/4 v10, 0x1

    if-eq v9, v10, :cond_a4

    const/4 v10, 0x2

    if-eq v9, v10, :cond_97

    const/4 v10, 0x3

    if-eq v9, v10, :cond_97

    const/4 v10, 0x4

    if-eq v9, v10, :cond_8a

    const/4 v10, 0x5

    if-eq v9, v10, :cond_7d

    goto :goto_ad

    :cond_7d
    iget-object v9, v8, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mVarName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v3, v7

    goto :goto_ad

    :cond_8a
    iget-object v9, v8, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mVarName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v3, v7

    goto :goto_ad

    :cond_97
    iget-object v9, v8, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mVarName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v3, v7

    goto :goto_ad

    :cond_a4
    iget-object v9, v8, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mVarName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v7
    :try_end_ac
    .catch Lorg/json/JSONException; {:try_start_4a .. :try_end_ac} :catch_b1

    nop

    :goto_ad
    add-int/lit8 v7, v7, 0x1

    goto :goto_58

    :cond_b0
    goto :goto_ca

    :catch_b1
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "JSON error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_ca
    iget-object v5, p0, Lmiui/maml/data/WebServiceBinder$List;->mList:Lmiui/maml/elements/ListScreenElement;

    invoke-virtual {v5, v3}, Lmiui/maml/elements/ListScreenElement;->addItem([Ljava/lang/Object;)V

    :goto_cf
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_44

    :cond_d3
    return-void
.end method

.method public fill(Lorg/w3c/dom/NodeList;)V
    .registers 13

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder$List;->mList:Lmiui/maml/elements/ListScreenElement;

    if-nez v0, :cond_2e

    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder$List;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v1, p0, Lmiui/maml/data/WebServiceBinder$List;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/ListScreenElement;

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder$List;->mList:Lmiui/maml/elements/ListScreenElement;

    if-nez v0, :cond_2e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fail to find list: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/maml/data/WebServiceBinder$List;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebServiceBinder"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2e
    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder$List;->mList:Lmiui/maml/elements/ListScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/ListScreenElement;->removeAllItems()V

    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder$List;->mList:Lmiui/maml/elements/ListScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/ListScreenElement;->getColumnsInfo()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    :goto_40
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v3, v4, :cond_ac

    invoke-interface {p1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    const/4 v5, 0x0

    :goto_4d
    if-ge v5, v1, :cond_a4

    const/4 v6, 0x0

    aput-object v6, v2, v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/maml/elements/ListScreenElement$ColumnInfo;

    iget-object v7, v6, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mVarName:Ljava/lang/String;

    invoke-static {v4, v7}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v7

    if-eqz v7, :cond_a1

    invoke-interface {v7}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_a1

    :try_start_66
    sget-object v9, Lmiui/maml/data/WebServiceBinder$1;->$SwitchMap$miui$maml$elements$ListScreenElement$ColumnInfo$Type:[I

    iget-object v10, v6, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    invoke-virtual {v10}, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->ordinal()I

    move-result v10

    aget v9, v9, v10

    const/4 v10, 0x1

    if-eq v9, v10, :cond_9c

    const/4 v10, 0x2

    if-eq v9, v10, :cond_95

    const/4 v10, 0x3

    if-eq v9, v10, :cond_8e

    const/4 v10, 0x4

    if-eq v9, v10, :cond_87

    const/4 v10, 0x5

    if-eq v9, v10, :cond_80

    goto :goto_9f

    :cond_80
    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v2, v5

    goto :goto_9f

    :cond_87
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v2, v5

    goto :goto_9f

    :cond_8e
    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v2, v5

    goto :goto_9f

    :cond_95
    invoke-static {v8}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v2, v5

    goto :goto_9f

    :cond_9c
    aput-object v8, v2, v5
    :try_end_9e
    .catch Ljava/lang/NumberFormatException; {:try_start_66 .. :try_end_9e} :catch_a0

    nop

    :goto_9f
    goto :goto_a1

    :catch_a0
    move-exception v9

    :cond_a1
    :goto_a1
    add-int/lit8 v5, v5, 0x1

    goto :goto_4d

    :cond_a4
    iget-object v5, p0, Lmiui/maml/data/WebServiceBinder$List;->mList:Lmiui/maml/elements/ListScreenElement;

    invoke-virtual {v5, v2}, Lmiui/maml/elements/ListScreenElement;->addItem([Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    :cond_ac
    return-void
.end method
