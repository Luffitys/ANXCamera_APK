.class public Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final A:Ljava/lang/String; = "EmojiHelmet"

.field private static final B:Ljava/lang/String; = "AngelWings"

.field private static final C:Ljava/lang/String; = "ClownHat"

.field private static final D:Ljava/lang/String; = "MagicHat"

.field private static final E:Ljava/lang/String; = "AstronautHat"

.field private static final F:Ljava/lang/String; = "DogHat"

.field private static final G:Ljava/lang/String; = "hairId"

.field private static final H:Ljava/lang/String; = "expId"

.field private static final I:Ljava/lang/String; = "blendshape"

.field private static final J:Ljava/lang/String; = "mask"

.field private static final K:I = 0x2

.field private static final L:I = 0x1

.field private static final M:I = 0x2

.field private static final N:I = 0x3

.field private static final a:Ljava/lang/String; = "ExtraSceneEngine"

.field private static final b:Ljava/lang/String; = "extraScene.xml"

.field private static final c:Ljava/lang/String; = "info"

.field private static final d:Ljava/lang/String; = "name"

.field private static final e:Ljava/lang/String; = "headwear"

.field private static final f:Ljava/lang/String; = "headwearcolor"

.field private static final g:Ljava/lang/String; = "expid"

.field private static final h:Ljava/lang/String; = "expvalue"

.field private static final i:Ljava/lang/String; = "outline"

.field private static final j:Ljava/lang/String; = "oldheadwear"

.field private static final k:Ljava/lang/String; = "newheadwear"

.field private static final l:Ljava/lang/String; = "expcheckid"

.field private static final m:Ljava/lang/String; = "expcheckvalue"

.field private static final n:Ljava/lang/String; = "oldtooth"

.field private static final o:Ljava/lang/String; = "newtooth"

.field private static final p:Ljava/lang/String; = "loopstyle"

.field private static final q:Ljava/lang/String; = "render"

.field private static final r:Ljava/lang/String; = "loop"

.field private static final s:Ljava/lang/String; = "random"

.field private static final t:Ljava/lang/String; = "pause"

.field private static final u:Ljava/lang/String; = "expidin"

.field private static final v:Ljava/lang/String; = "expidout"

.field private static final w:Ljava/lang/String; = "RabbitTeeth"

.field private static final x:Ljava/lang/String; = "RabbitEars"

.field private static final y:Ljava/lang/String; = "ChickHat"

.field private static final z:Ljava/lang/String; = "WizardHat"


# instance fields
.field private O:Ljava/lang/String;

.field private P:Lcom/arcsoft/avatar/AvatarEngine;

.field private Q:Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigValue;

.field private R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

.field private S:Ljava/util/ArrayList;

.field private T:Ljava/lang/String;

.field private U:I

.field private V:I

.field private W:I

.field private X:I

.field private Y:I

.field private Z:I

.field private aa:I

.field private ab:Ljava/util/Random;

.field private ac:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    iput-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->S:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput v1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->U:I

    iput v1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->V:I

    iput v1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->W:I

    iput v1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->X:I

    iput v1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->Y:I

    iput v1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->Z:I

    iput v1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->aa:I

    iput-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->ab:Ljava/util/Random;

    iput-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->ac:Ljava/util/List;

    iput-object p1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->T:Ljava/lang/String;

    new-instance v0, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigValue;

    invoke-direct {v0}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigValue;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->Q:Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigValue;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->S:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "extraScene.xml"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->O:Ljava/lang/String;

    invoke-direct {p0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->a()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->ac:Ljava/util/List;

    return-void
.end method

.method private a()V
    .locals 7

    :try_start_0
    const-string v0, "ExtraSceneEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getXmlInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->O:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->O:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    :goto_0
    const/4 v5, 0x1

    if-eq v0, v5, :cond_19

    const/4 v5, 0x2

    if-eq v0, v5, :cond_16

    const/4 v5, 0x3

    if-eq v0, v5, :cond_14

    const/4 v5, 0x4

    if-eq v0, v5, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v0, "name"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setName(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1
    const-string v0, "headwear"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setHeadWear(I)V

    goto/16 :goto_2

    :cond_2
    const-string v0, "outline"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v5, "1"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setNeedOutLine(Z)V

    goto/16 :goto_2

    :cond_3
    const-string v0, "expid"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo$ExpressInfo;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v3}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo$ExpressInfo;-><init>(Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;)V

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->a(Ljava/lang/String;)[I

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo$ExpressInfo;->setExpressIndex([I)V

    move-object v4, v0

    goto/16 :goto_2

    :cond_4
    const-string v0, "expvalue"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4, v3}, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->a(Ljava/lang/String;Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo$ExpressInfo;Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;)V

    goto/16 :goto_2

    :cond_5
    const-string v0, "oldheadwear"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "/"

    if-eqz v0, :cond_6

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->T:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setOldHeadWearPath(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    const-string v0, "newheadwear"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v3}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getRandom()I

    move-result v0

    if-lez v0, :cond_7

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->a(Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->T:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setNewHeadWearPath(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_8
    const-string v0, "expcheckid"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->a(Ljava/lang/String;)[I

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setExpCheckId([I)V

    goto/16 :goto_2

    :cond_9
    const-string v0, "expcheckvalue"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->b(Ljava/lang/String;)[F

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setExpCheckValue([F)V

    goto/16 :goto_2

    :cond_a
    const-string v0, "oldtooth"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->T:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setOldToothPath(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_b
    const-string v0, "newtooth"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->T:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setNewToothPath(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_c
    const-string v0, "loopstyle"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setLoopType(I)V

    goto/16 :goto_2

    :cond_d
    const-string v0, "loop"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->a(Ljava/lang/String;Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;)V

    goto/16 :goto_2

    :cond_e
    const-string v0, "headwearcolor"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setHeadWearColor(I)V

    goto/16 :goto_2

    :cond_f
    const-string v0, "random"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setRandom(I)V

    goto/16 :goto_2

    :cond_10
    const-string v0, "pause"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->b(Ljava/lang/String;Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;)V

    goto :goto_2

    :cond_11
    const-string v0, "render"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->c(Ljava/lang/String;Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;)V

    goto :goto_2

    :cond_12
    const-string v0, "expidin"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->a(Ljava/lang/String;)[I

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setExpIdInPut([I)V

    goto :goto_2

    :cond_13
    const-string v0, "expidout"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->a(Ljava/lang/String;)[I

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setExpIdOutPut([I)V

    goto :goto_2

    :cond_14
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/arcsoft/avatar/BackgroundInfo;->getXMLInfoTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->S:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    const-string v0, ""

    goto :goto_1

    :cond_16
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "info"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    new-instance v2, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-direct {v2}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;-><init>()V

    move-object v3, v2

    :cond_17
    :goto_1
    move-object v2, v0

    :cond_18
    :goto_2
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_3

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_19
    :goto_3
    return-void
.end method

.method private a(Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;)V
    .locals 6

    iget-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    invoke-direct {p0, p1}, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->l(Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v4, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->W:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->W:I

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    iput v4, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->W:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "check = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mCheckFrameCount = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->W:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "rabbitEars"

    invoke-static {v4, v0}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->W:I

    if-ge v0, v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v0

    iget-object v4, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v4}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result v4

    if-ne v4, v2, :cond_2

    iget-object v4, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v4}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExpressInfoList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    iput v4, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->U:I

    :cond_2
    iget-object v4, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v4}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExpressInfoList()Ljava/util/ArrayList;

    move-result-object v4

    iget v5, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->U:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo$ExpressInfo;

    invoke-direct {p0, v4, v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->a(Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo$ExpressInfo;[F)V

    iget-object v4, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v4}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result v4

    if-eq v4, v2, :cond_4

    iget v4, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->U:I

    iget-object v5, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v5}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExpressInfoList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v3

    if-lt v4, v5, :cond_3

    iget-object v3, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v3, v2}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setExtraStatus(I)V

    iput v1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->U:I

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->U:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->U:I

    iget-object p0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setExtraStatus(I)V

    :cond_4
    :goto_1
    invoke-virtual {p1, v0}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;->setExpWeights([F)V

    return-void
.end method

.method private a(Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo$ExpressInfo;[F)V
    .locals 8

    invoke-virtual {p1}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo$ExpressInfo;->getExpressIndex()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo$ExpressInfo;->getExpressValue()Ljava/util/ArrayList;

    move-result-object p1

    iget-object v1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->ac:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v1}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getHairMaskInfoList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    move v3, v2

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo$HairMaskInfo;

    iget-object v5, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->Q:Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigValue;

    iget v5, v5, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigValue;->configHairStyleID:I

    invoke-virtual {v4}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo$HairMaskInfo;->getHairId()I

    move-result v6

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->ac:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    array-length v3, v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-string v5, "] = "

    const-string v6, "set express["

    const-string v7, "expWeights"

    if-ne v3, v4, :cond_2

    aget v3, v0, v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, p2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v0, v1

    goto :goto_2

    :cond_2
    aget v3, v0, v2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, p2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v0, v2

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->ac:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo$HairMaskInfo;

    invoke-virtual {v4}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo$HairMaskInfo;->getExpId()I

    move-result v5

    aget v6, v0, v1

    if-ne v5, v6, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expid -> "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v0, v1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", HairInfo -> "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo$HairMaskInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "setHairRenderParam"

    invoke-static {v5, v3}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->P:Lcom/arcsoft/avatar/AvatarEngine;

    invoke-virtual {v4}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo$HairMaskInfo;->getBlendShape()Z

    move-result v5

    invoke-virtual {v4}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo$HairMaskInfo;->getMask()Z

    move-result v4

    invoke-virtual {v3, v5, v4}, Lcom/arcsoft/avatar/AvatarEngine;->setHairRenderParam(ZZ)I

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_5
    iget-object p1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {p1}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getNewHeadWearPathList()Ljava/util/ArrayList;

    move-result-object p1

    const-string p2, "rabbitEars"

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {p1}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getNewHeadWearPathList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getAccPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->P:Lcom/arcsoft/avatar/AvatarEngine;

    invoke-virtual {v0, p1}, Lcom/arcsoft/avatar/AvatarEngine;->setHeadWearTexture(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v0, p1}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setAccPath(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new headwear path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object p1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {p1}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getNewToothPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->P:Lcom/arcsoft/avatar/AvatarEngine;

    iget-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getNewToothPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/arcsoft/avatar/AvatarEngine;->setToothTexture(Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "new tooth path = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {p0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getNewToothPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method private a(Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getRandom()I

    move-result v2

    if-ge v1, v2, :cond_2

    move v2, v0

    :goto_1
    invoke-virtual {p1}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getRandom()I

    move-result v3

    if-ge v2, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_2

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->T:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Tex_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "_acc.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setNewHeadWearPath(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo$ExpressInfo;Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const-string p0, ","

    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    move v0, p1

    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    aget-object v1, p0, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p2, v2}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo$ExpressInfo;->setExpressValue(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    if-le v1, p0, :cond_2

    :goto_1
    if-ge p1, v1, :cond_3

    invoke-virtual {p3, p2}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setExpressInfo(Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo$ExpressInfo;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p3, p2}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setExpressInfo(Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo$ExpressInfo;)V

    :cond_3
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;)V
    .locals 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const-string p0, "-"

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "begin ="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", end ="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", num ="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "expWeights"

    invoke-static {v3, v0}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExpressInfoList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo$ExpressInfo;

    invoke-virtual {v4}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo$ExpressInfo;->getExpressIndex()[I

    move-result-object v5

    aget v5, v5, v1

    if-ne v5, v2, :cond_2

    invoke-virtual {p2, v3}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setLoopBeginFrameIndex(I)V

    :cond_2
    invoke-virtual {v4}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo$ExpressInfo;->getExpressIndex()[I

    move-result-object v5

    aget v5, v5, v1

    if-ne v5, p0, :cond_3

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo$ExpressInfo;->setLoopStatus(I)V

    invoke-virtual {p2, v3}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setLoopEndFrameIndex(I)V

    invoke-virtual {p2, p1}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setLoopNum(I)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method private a(Ljava/lang/String;)[I
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, ","

    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length p1, p0

    new-array p1, p1, [I

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private b(Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;)V
    .locals 4

    invoke-virtual {p1}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v1}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExpressInfoList()Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->U:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo$ExpressInfo;

    invoke-direct {p0, v1, v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->a(Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo$ExpressInfo;[F)V

    iget v1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->U:I

    iget-object v2, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v2}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExpressInfoList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->U:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->U:I

    :goto_0
    iput v1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->U:I

    iget-object v1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v1}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExpIdInPut()[I

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v1}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExpIdOutPut()[I

    move-result-object v1

    if-eqz v1, :cond_1

    :goto_1
    iget-object v1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v1}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExpIdInPut()[I

    move-result-object v1

    array-length v1, v1

    if-ge v3, v1, :cond_1

    iget-object v1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v1}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExpIdInPut()[I

    move-result-object v1

    aget v1, v1, v3

    iget-object v2, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v2}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExpIdOutPut()[I

    move-result-object v2

    aget v2, v2, v3

    aget v2, v0, v2

    neg-float v2, v2

    aput v2, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v2}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExpIdInPut()[I

    move-result-object v2

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v2}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExpIdOutPut()[I

    move-result-object v2

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rabbitTeeth"

    invoke-static {v2, v1}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;->setExpWeights([F)V

    return-void
.end method

.method private b(Ljava/lang/String;Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "index ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "expWeights"

    invoke-static {v0, p1}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExpressInfoList()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo$ExpressInfo;

    invoke-virtual {v2}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo$ExpressInfo;->getExpressIndex()[I

    move-result-object v3

    aget v3, v3, v0

    if-ne v3, p0, :cond_2

    const/4 p0, 0x1

    invoke-virtual {v2, p0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo$ExpressInfo;->setPauseStatus(Z)V

    invoke-virtual {p2, v1}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setPauseIndex(I)V

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private b(Ljava/lang/String;)[F
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, ","

    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length p1, p0

    new-array p1, p1, [F

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private c(Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;)V
    .locals 13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[54] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v1

    const/16 v2, 0x36

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", [55] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v1

    const/16 v2, 0x37

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "check_expweight"

    invoke-static {v1, v0}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->l(Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;)Z

    move-result v0

    const/4 v1, 0x2

    const-string v3, "[55] = "

    const/4 v4, 0x3

    const-string v5, "clownHat"

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result v0

    if-ne v0, v4, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object p1

    aget p1, p1, v2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {p1, v6}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setExtraStatus(I)V

    iput v7, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->W:I

    iget-object p1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {p1}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getNewHeadWearPathList()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->V:I

    iget-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getNewHeadWearPathList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v6

    if-lt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->V:I

    add-int/lit8 v7, p1, 0x1

    iput v7, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->V:I

    :goto_0
    iput v7, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->V:I

    :cond_2
    return-void

    :cond_3
    iput v7, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->W:I

    return-void

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v3

    aget v2, v3, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result v0

    if-ne v0, v4, :cond_5

    return-void

    :cond_5
    iget v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->W:I

    add-int/2addr v0, v6

    iput v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->W:I

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCheckFrameCount = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->W:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->W:I

    if-gt v0, v4, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getAccPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getOldHeadWearPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setAccPath(Ljava/lang/String;)V

    iput v7, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->V:I

    :cond_7
    iget-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getNewHeadWearPathList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getNewHeadWearPathList()Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->V:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_2

    :cond_8
    const-string v0, ""

    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v2}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getAccPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->P:Lcom/arcsoft/avatar/AvatarEngine;

    invoke-virtual {v2, v0}, Lcom/arcsoft/avatar/AvatarEngine;->setHeadWearTexture(Ljava/lang/String;)I

    iget-object v2, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v2, v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setAccPath(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set Acc ->  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    iget-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result v0

    if-eq v0, v4, :cond_d

    invoke-virtual {p1}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v0

    iget-object v2, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v2}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExpressInfoList()Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->U:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo$ExpressInfo;

    invoke-virtual {v2}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo$ExpressInfo;->getExpressIndex()[I

    move-result-object v3

    invoke-virtual {v2}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo$ExpressInfo;->getExpressValue()Ljava/util/ArrayList;

    move-result-object v2

    move v8, v7

    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_b

    array-length v9, v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    const-string v11, "] = "

    const-string v12, "set express["

    if-ne v9, v10, :cond_a

    aget v9, v3, v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    aput v10, v0, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, v3, v8

    goto :goto_4

    :cond_a
    aget v9, v3, v7

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    aput v10, v0, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, v3, v7

    :goto_4
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_b
    invoke-virtual {p1, v0}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;->setExpWeights([F)V

    iget p1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->U:I

    iget-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExpressInfoList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v6

    if-lt p1, v0, :cond_c

    iget-object p1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {p1, v4}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setExtraStatus(I)V

    iput v7, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->U:I

    goto :goto_5

    :cond_c
    iget p1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->U:I

    add-int/2addr p1, v6

    iput p1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->U:I

    iget-object p0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {p0, v1}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setExtraStatus(I)V

    :cond_d
    :goto_5
    return-void
.end method

.method private c(Ljava/lang/String;Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;)V
    .locals 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo$HairMaskInfo;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p2}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo$HairMaskInfo;-><init>(Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;)V

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_7

    aget-object v2, p1, v1

    aget-object v3, p1, v1

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v3, p1, v1

    const-string v5, "hairId"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    invoke-virtual {p0, v2}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo$HairMaskInfo;->setHairId(I)V

    goto :goto_3

    :cond_1
    aget-object v3, p1, v1

    const-string v6, "expId"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v5, :cond_2

    invoke-virtual {p0, v2}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo$HairMaskInfo;->setExpId(I)V

    goto :goto_3

    :cond_2
    aget-object v3, p1, v1

    const-string v6, "blendshape"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v5, :cond_4

    if-ne v2, v4, :cond_3

    goto :goto_1

    :cond_3
    move v4, v0

    :goto_1
    invoke-virtual {p0, v4}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo$HairMaskInfo;->setBlendShape(Z)V

    goto :goto_3

    :cond_4
    aget-object v3, p1, v1

    const-string v6, "mask"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v5, :cond_6

    if-ne v2, v4, :cond_5

    goto :goto_2

    :cond_5
    move v4, v0

    :goto_2
    invoke-virtual {p0, v4}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo$HairMaskInfo;->setMask(Z)V

    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {p2, p0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setHairMaskInfo(Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo$HairMaskInfo;)V

    return-void
.end method

.method private d(Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[54] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v1

    const/16 v2, 0x36

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", [55] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v1

    const/16 v2, 0x37

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "check_expweight"

    invoke-static {v1, v0}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->l(Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {p1}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result p1

    if-ne p1, v4, :cond_1

    iget-object p1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {p1, v3}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setExtraStatus(I)V

    iput v2, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->W:I

    return-void

    :cond_1
    iput v2, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->W:I

    return-void

    :cond_2
    iget-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result v0

    if-ne v0, v4, :cond_3

    return-void

    :cond_3
    iget v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->W:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->W:I

    :goto_0
    iget v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->W:I

    if-gt v0, v4, :cond_4

    return-void

    :cond_4
    invoke-virtual {p1}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v0

    iget-object v5, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v5}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExpressInfoList()Ljava/util/ArrayList;

    move-result-object v5

    iget v6, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->U:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo$ExpressInfo;

    invoke-direct {p0, v5, v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->a(Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo$ExpressInfo;[F)V

    iget-object v5, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v5}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result v5

    if-eq v5, v4, :cond_6

    iget v5, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->U:I

    iget-object v6, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v6}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExpressInfoList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v3

    if-lt v5, v6, :cond_5

    iget-object v1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v1, v4}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setExtraStatus(I)V

    iput v2, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->U:I

    goto :goto_1

    :cond_5
    iget v2, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->U:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->U:I

    iget-object p0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {p0, v1}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setExtraStatus(I)V

    :cond_6
    :goto_1
    invoke-virtual {p1, v0}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;->setExpWeights([F)V

    return-void
.end method

.method private e(Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;)V
    .locals 6

    invoke-virtual {p1}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;->getOrientations()[F

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "emojiHelmet"

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    aget v3, p1, v0

    const/high16 v4, -0x3e900000    # -15.0f

    cmpg-float v3, v3, v4

    const/high16 v4, 0x41200000    # 10.0f

    if-gez v3, :cond_0

    aget v3, p1, v2

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    const-string p1, "--- right---"

    invoke-static {v1, p1}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->aa:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->aa:I

    iput v2, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->Z:I

    goto :goto_1

    :cond_0
    aget v3, p1, v0

    const/high16 v5, 0x41700000    # 15.0f

    cmpl-float v3, v3, v5

    if-lez v3, :cond_1

    aget p1, p1, v2

    cmpg-float p1, p1, v4

    if-gez p1, :cond_1

    const-string p1, "--- left---"

    invoke-static {v1, p1}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->Z:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->Z:I

    goto :goto_0

    :cond_1
    iput v2, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->Z:I

    :goto_0
    iput v2, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->aa:I

    :cond_2
    :goto_1
    iget p1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->Z:I

    const/4 v3, 0x3

    if-ge p1, v3, :cond_3

    iget p1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->aa:I

    if-lt p1, v3, :cond_4

    :cond_3
    move v2, v0

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check -> "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_5

    iget-object p0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {p0, v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setExtraStatus(I)V

    return-void

    :cond_5
    iget-object p1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {p1}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result p1

    if-ne p1, v3, :cond_6

    return-void

    :cond_6
    iget-object p1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->ab:Ljava/util/Random;

    if-nez p1, :cond_7

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->ab:Ljava/util/Random;

    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "old left = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getEmojiHelmetLeftRandomNum()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", old right = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getEmojiHelmetRightRandomNum()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget-object p1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->ab:Ljava/util/Random;

    iget-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getRandom()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "random = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->Z:I

    if-lt v0, v3, :cond_9

    iget-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getEmojiHelmetLeftRandomNum()I

    move-result v0

    if-eq v0, p1, :cond_8

    iget-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getEmojiHelmetRightRandomNum()I

    move-result v0

    if-eq v0, p1, :cond_8

    iget-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v0, p1}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setEmojiHelmetLeftRandomNum(I)V

    goto :goto_2

    :cond_9
    iget v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->aa:I

    if-lt v0, v3, :cond_8

    iget-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getEmojiHelmetLeftRandomNum()I

    move-result v0

    if-eq v0, p1, :cond_8

    iget-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getEmojiHelmetRightRandomNum()I

    move-result v0

    if-eq v0, p1, :cond_8

    iget-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v0, p1}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setEmojiHelmetRightRandomNum(I)V

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "new left = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getEmojiHelmetLeftRandomNum()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", new right = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getEmojiHelmetRightRandomNum()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->Z:I

    if-ge p1, v3, :cond_b

    iget p1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->aa:I

    if-lt p1, v3, :cond_a

    goto :goto_3

    :cond_a
    const-string p1, ""

    goto :goto_4

    :cond_b
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Tex_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getEmojiHelmetRightRandomNum()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getEmojiHelmetLeftRandomNum()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "_acc.png"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_4
    iget-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getNewHeadWearPathList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_c

    iget-object p1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {p1}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getAccPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    return-void

    :cond_d
    iget-object p1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->P:Lcom/arcsoft/avatar/AvatarEngine;

    invoke-virtual {p1, v2}, Lcom/arcsoft/avatar/AvatarEngine;->setHeadWearTexture(Ljava/lang/String;)I

    iget-object p1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {p1, v2}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setAccPath(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "acc path = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    iget-object p0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {p0, v3}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setExtraStatus(I)V

    return-void
.end method

.method private f(Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[54] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v1

    const/16 v2, 0x36

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", [55] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v1

    const/16 v2, 0x37

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "check_expweight"

    invoke-static {v1, v0}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->l(Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {p1}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result p1

    if-ne p1, v4, :cond_1

    iget-object p1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {p1, v3}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setExtraStatus(I)V

    iput v2, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->W:I

    return-void

    :cond_1
    iput v2, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->W:I

    return-void

    :cond_2
    iget-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result v0

    if-ne v0, v4, :cond_3

    return-void

    :cond_3
    iget v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->W:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->W:I

    :goto_0
    iget v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->W:I

    if-gt v0, v4, :cond_4

    return-void

    :cond_4
    invoke-virtual {p1}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v0

    iget-object v5, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v5}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExpressInfoList()Ljava/util/ArrayList;

    move-result-object v5

    iget v6, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->U:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo$ExpressInfo;

    invoke-direct {p0, v5, v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->a(Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo$ExpressInfo;[F)V

    iget-object v6, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v6}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result v6

    if-eq v6, v4, :cond_7

    invoke-virtual {v5}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo$ExpressInfo;->getLoopStatus()I

    move-result v5

    const-string v6, "expWeights"

    if-ne v5, v1, :cond_5

    iget-object v5, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v5}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getLoopCount()I

    move-result v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-- loopCount = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", number = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v8}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getLoopNum()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v7}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getLoopNum()I

    move-result v7

    if-ge v5, v7, :cond_5

    iget-object v1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v1}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getLoopBeginFrameIndex()I

    move-result v1

    iput v1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->U:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-- mExtraSceneIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->U:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    add-int/2addr v5, v3

    invoke-virtual {p0, v5}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setLoopCount(I)V

    invoke-virtual {p1, v0}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;->setExpWeights([F)V

    return-void

    :cond_5
    iget v5, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->U:I

    iget-object v7, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v7}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExpressInfoList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v3

    if-lt v5, v7, :cond_6

    const-string v1, "--- end ---"

    invoke-static {v6, v1}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v1, v4}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setExtraStatus(I)V

    iget-object v1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v1, v2}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setLoopCount(I)V

    iput v2, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->U:I

    iput v2, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->Y:I

    goto :goto_1

    :cond_6
    iget v2, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->U:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->U:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--> mExtraSceneIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->U:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {p0, v1}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setExtraStatus(I)V

    :cond_7
    :goto_1
    invoke-virtual {p1, v0}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;->setExpWeights([F)V

    return-void
.end method

.method private g(Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;)V
    .locals 8

    iget-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_4

    invoke-virtual {p1}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v0

    aget v0, v0, v3

    const v4, 0x3f4ccccd    # 0.8f

    cmpl-float v0, v0, v4

    const v5, 0x3e4ccccd    # 0.2f

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v0

    aget v0, v0, v2

    cmpg-float v0, v0, v5

    if-gez v0, :cond_0

    iget v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->Z:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->Z:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v0

    aget v0, v0, v2

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    invoke-virtual {p1}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v0

    aget v0, v0, v3

    cmpg-float v0, v0, v5

    if-gez v0, :cond_1

    iget v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->aa:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->aa:I

    iput v3, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->Z:I

    goto :goto_1

    :cond_1
    iput v3, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->Z:I

    :goto_0
    iput v3, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->aa:I

    :goto_1
    iget v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->Z:I

    if-ge v0, v1, :cond_3

    iget v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->aa:I

    if-le v0, v1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v3

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v2

    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "check = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "wizardHat"

    invoke-static {v5, v4}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_4

    return-void

    :cond_4
    invoke-virtual {p1}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v0

    iget-object v4, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v4}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExpressInfoList()Ljava/util/ArrayList;

    move-result-object v4

    iget v5, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->U:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo$ExpressInfo;

    invoke-direct {p0, v4, v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->a(Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo$ExpressInfo;[F)V

    iget-object v5, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v5}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result v5

    if-eq v5, v1, :cond_7

    invoke-virtual {v4}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo$ExpressInfo;->getLoopStatus()I

    move-result v1

    const/4 v4, 0x2

    const-string v5, "expWeights"

    if-ne v1, v4, :cond_5

    iget-object v1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v1}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getLoopCount()I

    move-result v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-- loopCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", number = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v7}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getLoopNum()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v6}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getLoopNum()I

    move-result v6

    if-ge v1, v6, :cond_5

    iget-object v3, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v3}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getLoopBeginFrameIndex()I

    move-result v3

    iput v3, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->U:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-- mExtraSceneIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->U:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setLoopCount(I)V

    invoke-virtual {p1, v0}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;->setExpWeights([F)V

    return-void

    :cond_5
    iget v1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->U:I

    iget-object v6, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v6}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExpressInfoList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v2

    if-lt v1, v6, :cond_6

    const-string v1, "--- end ---"

    invoke-static {v5, v1}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v1, v2}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setExtraStatus(I)V

    iget-object v1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v1, v3}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setLoopCount(I)V

    iput v3, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->U:I

    iput v3, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->Y:I

    iput v3, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->Z:I

    iput v3, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->aa:I

    goto :goto_4

    :cond_6
    iget v1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->U:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->U:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--> mExtraSceneIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->U:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {p0, v4}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setExtraStatus(I)V

    :cond_7
    :goto_4
    invoke-virtual {p1, v0}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;->setExpWeights([F)V

    return-void
.end method

.method private h(Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->l(Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[58] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v2

    const/16 v3, 0x3a

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "check_expweight"

    invoke-static {v2, v1}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {p1}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result p1

    if-ne p1, v3, :cond_1

    iget-object p0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {p0, v2}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setExtraStatus(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result v0

    if-ne v0, v3, :cond_3

    return-void

    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v0

    iget-object v4, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v4}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExpressInfoList()Ljava/util/ArrayList;

    move-result-object v4

    iget v5, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->U:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo$ExpressInfo;

    invoke-direct {p0, v4, v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->a(Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo$ExpressInfo;[F)V

    iget-object v4, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v4}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result v4

    if-eq v4, v3, :cond_5

    iget v4, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->U:I

    iget-object v5, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v5}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExpressInfoList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v2

    if-lt v4, v5, :cond_4

    iget-object v1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v1, v3}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setExtraStatus(I)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->U:I

    goto :goto_1

    :cond_4
    iget v3, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->U:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->U:I

    iget-object p0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {p0, v1}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setExtraStatus(I)V

    :cond_5
    :goto_1
    invoke-virtual {p1, v0}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;->setExpWeights([F)V

    return-void
.end method

.method private i(Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;->getOrientations()[F

    move-result-object v2

    if-eqz v2, :cond_11

    array-length v3, v2

    const/4 v4, 0x3

    if-ge v3, v4, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v3, 0x2

    aget v5, v2, v3

    const/high16 v6, 0x41700000    # 15.0f

    cmpl-float v5, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-lez v5, :cond_1

    move v2, v7

    goto :goto_0

    :cond_1
    aget v2, v2, v3

    const/high16 v5, -0x3e900000    # -15.0f

    cmpg-float v2, v2, v5

    if-gez v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v6

    :goto_0
    if-nez v2, :cond_3

    iget-object v5, v0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v5}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getHeadPitchStatus()I

    move-result v5

    if-nez v5, :cond_3

    invoke-direct/range {p0 .. p1}, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->j(Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;)V

    return-void

    :cond_3
    if-nez v2, :cond_6

    iget-object v5, v0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v5}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result v5

    if-ne v5, v3, :cond_4

    goto :goto_1

    :cond_4
    iget-object v1, v0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v1}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result v1

    if-ne v1, v4, :cond_5

    iget-object v1, v0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v1, v6}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setHeadPitchStatus(I)V

    iget-object v0, v0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v0, v7}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setExtraStatus(I)V

    :cond_5
    return-void

    :cond_6
    if-ne v2, v3, :cond_7

    iget-object v5, v0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v5}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result v5

    if-ne v5, v7, :cond_7

    invoke-direct/range {p0 .. p1}, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->j(Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;)V

    return-void

    :cond_7
    iget-object v5, v0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v5}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result v5

    if-ne v5, v4, :cond_8

    invoke-direct/range {p0 .. p1}, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->j(Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;)V

    return-void

    :cond_8
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v5

    iget-object v8, v0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v8}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExpressInfoList()Ljava/util/ArrayList;

    move-result-object v8

    iget v9, v0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->U:I

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo$ExpressInfo;

    invoke-virtual {v8}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo$ExpressInfo;->getExpressIndex()[I

    move-result-object v9

    invoke-virtual {v8}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo$ExpressInfo;->getExpressValue()Ljava/util/ArrayList;

    move-result-object v10

    move v11, v6

    :goto_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_a

    array-length v12, v9

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v13

    const-string v14, "] = "

    const-string v15, "set express["

    const-string v4, "expWeights"

    if-ne v12, v13, :cond_9

    aget v12, v9, v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    aput v13, v5, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v13, v9, v11

    goto :goto_3

    :cond_9
    aget v12, v9, v6

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    aput v13, v5, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v13, v9, v6

    :goto_3
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x3

    goto :goto_2

    :cond_a
    if-eqz v2, :cond_b

    iget-object v4, v0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v4, v2}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setHeadPitchStatus(I)V

    :cond_b
    iget-object v2, v0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v2}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getHeadPitchStatus()I

    move-result v2

    if-ne v2, v3, :cond_c

    goto :goto_4

    :cond_c
    iget-object v2, v0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v2}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getHeadPitchStatus()I

    move-result v2

    if-ne v2, v7, :cond_e

    invoke-virtual {v8}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo$ExpressInfo;->isPauseFrame()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v1, v5}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;->setExpWeights([F)V

    return-void

    :cond_d
    iget-object v2, v0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v2}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getOldHeadWearPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    iget-object v4, v0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v4}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getAccPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-> "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v8, "check_expweight"

    invoke-static {v8, v4}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->P:Lcom/arcsoft/avatar/AvatarEngine;

    invoke-virtual {v4, v2}, Lcom/arcsoft/avatar/AvatarEngine;->setHeadWearTexture(Ljava/lang/String;)I

    iget-object v4, v0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v4, v2}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setAccPath(Ljava/lang/String;)V

    :cond_e
    :goto_4
    iget-object v2, v0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v2}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_10

    iget v2, v0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->U:I

    iget-object v8, v0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v8}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExpressInfoList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v7

    if-lt v2, v8, :cond_f

    iget-object v2, v0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v2, v4}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setExtraStatus(I)V

    iput v6, v0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->U:I

    goto :goto_5

    :cond_f
    iget v2, v0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->U:I

    add-int/2addr v2, v7

    iput v2, v0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->U:I

    iget-object v0, v0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v0, v3}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setExtraStatus(I)V

    :cond_10
    :goto_5
    invoke-virtual {v1, v5}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;->setExpWeights([F)V

    :cond_11
    :goto_6
    return-void
.end method

.method private j(Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;)V
    .locals 14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[48] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v1

    const/16 v2, 0x30

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", [49] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v1

    const/16 v2, 0x31

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", [50] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v1

    const/16 v2, 0x32

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", [51] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v1

    const/16 v2, 0x33

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", [52] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v1

    const/16 v2, 0x34

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", [54] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v1

    const/16 v2, 0x36

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", [55] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v1

    const/16 v2, 0x37

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", [21] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v1

    const/16 v2, 0x15

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "check_expweight"

    invoke-static {v1, v0}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v2, v0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v4}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExpCheckIdList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v2, v4, :cond_4

    iget-object v4, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v4}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExpCheckIdList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    iget-object v6, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v6}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExpCheckValueList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [F

    move v7, v0

    :goto_1
    array-length v8, v4

    if-ge v7, v8, :cond_2

    aget v3, v6, v7

    const/4 v8, 0x0

    cmpl-float v3, v3, v8

    const-string v9, ", exp["

    const-string v10, "["

    const-string v11, "check_astronautHat"

    const-string v12, "] = "

    if-ltz v3, :cond_0

    invoke-virtual {p1}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v3

    aget v13, v4, v7

    aget v3, v3, v13

    aget v13, v6, v7

    cmpl-float v3, v3, v13

    if-lez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v4, v7

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v6, v7

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v4, v7

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v8

    aget v9, v4, v7

    aget v8, v8, v9

    :goto_2
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_0
    aget v3, v6, v7

    cmpg-float v3, v3, v8

    if-gez v3, :cond_1

    invoke-virtual {p1}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v3

    aget v8, v4, v7

    aget v3, v3, v8

    aget v8, v6, v7

    neg-float v8, v8

    cmpg-float v3, v3, v8

    if-gez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v4, v7

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v6, v7

    neg-float v8, v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v4, v7

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v8

    aget v9, v4, v7

    aget v8, v8, v9

    goto :goto_2

    :goto_3
    add-int/lit8 v7, v7, 0x1

    move v3, v5

    goto/16 :goto_1

    :cond_1
    const-string v3, "--- false ---"

    invoke-static {v11, v3}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v0

    :cond_2
    if-eqz v3, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    move v2, v0

    :goto_4
    iget-object p1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {p1}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getNewHeadWearPathList()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_8

    if-ltz v2, :cond_8

    iget-object p1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {p1}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getNewHeadWearPathList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v3}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getAccPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    return-void

    :cond_5
    iget v3, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->X:I

    if-ne v2, v3, :cond_6

    iget v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->W:I

    add-int/2addr v0, v5

    goto :goto_5

    :cond_6
    iput v2, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->X:I

    :goto_5
    iput v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->W:I

    iget v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->W:I

    const/4 v2, 0x3

    if-gt v0, v2, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->P:Lcom/arcsoft/avatar/AvatarEngine;

    invoke-virtual {v0, p1}, Lcom/arcsoft/avatar/AvatarEngine;->setHeadWearTexture(Ljava/lang/String;)I

    iget-object p0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {p0, p1}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setAccPath(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "new headwear path = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method private k(Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;)V
    .locals 9

    iget-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getAccPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getOldHeadWearPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setAccPath(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[48] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v2

    const/16 v3, 0x30

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", [49] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v2

    const/16 v3, 0x31

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", [50] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v2

    const/16 v3, 0x32

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", [51] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v2

    const/16 v3, 0x33

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", [52] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v2

    const/16 v3, 0x34

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", [54] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v2

    const/16 v3, 0x36

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", [55] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v2

    const/16 v3, 0x37

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", [21] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v2

    const/16 v3, 0x15

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", [58] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v2

    const/16 v3, 0x3a

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "check_expweight"

    invoke-static {v2, v1}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v1}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExpIdInPut()[I

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v1}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExpIdOutPut()[I

    move-result-object v1

    if-eqz v1, :cond_2

    move v1, v3

    :goto_0
    iget-object v4, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v4}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExpIdInPut()[I

    move-result-object v4

    array-length v4, v4

    if-ge v1, v4, :cond_1

    iget-object v4, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v4}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExpIdInPut()[I

    move-result-object v4

    aget v4, v4, v1

    iget-object v5, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v5}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExpIdOutPut()[I

    move-result-object v5

    aget v5, v5, v1

    aget v5, v0, v5

    aput v5, v0, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v5}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExpIdInPut()[I

    move-result-object v5

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v6}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExpIdInPut()[I

    move-result-object v6

    aget v6, v6, v1

    aget v6, v0, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v6}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExpIdOutPut()[I

    move-result-object v6

    aget v6, v6, v1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v5}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExpIdOutPut()[I

    move-result-object v5

    aget v5, v5, v1

    aget v5, v0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "dogHat"

    invoke-static {v5, v4}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;->setExpWeights([F)V

    :cond_2
    move v0, v3

    move v1, v0

    :goto_1
    iget-object v4, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v4}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExpCheckIdList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_7

    iget-object v4, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v4}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExpCheckIdList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    iget-object v5, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v5}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExpCheckValueList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [F

    move v6, v3

    :goto_2
    array-length v7, v4

    if-ge v6, v7, :cond_5

    aget v1, v5, v6

    const/4 v7, 0x0

    cmpl-float v1, v1, v7

    if-ltz v1, :cond_3

    invoke-virtual {p1}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v1

    aget v8, v4, v6

    aget v1, v1, v8

    aget v8, v5, v6

    cmpl-float v1, v1, v8

    if-ltz v1, :cond_3

    goto :goto_3

    :cond_3
    aget v1, v5, v6

    cmpg-float v1, v1, v7

    if-gez v1, :cond_4

    invoke-virtual {p1}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v1

    aget v7, v4, v6

    aget v1, v1, v7

    aget v7, v5, v6

    neg-float v7, v7

    cmpg-float v1, v1, v7

    if-gtz v1, :cond_4

    :goto_3
    add-int/lit8 v6, v6, 0x1

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    move v1, v3

    :cond_5
    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    :goto_4
    iget-object p1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getNewHeadWearPathList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_5

    :cond_8
    invoke-virtual {p1}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getOldHeadWearPath()Ljava/lang/String;

    move-result-object p1

    :goto_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getAccPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->P:Lcom/arcsoft/avatar/AvatarEngine;

    invoke-virtual {v0, p1}, Lcom/arcsoft/avatar/AvatarEngine;->setHeadWearTexture(Ljava/lang/String;)I

    iget-object p0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {p0, p1}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setAccPath(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "new headwear path = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method private l(Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;)Z
    .locals 8

    iget-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExpCheckIdList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExpCheckValueList()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_4

    :cond_0
    move v0, v1

    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v3}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExpCheckIdList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    iget-object v3, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v3}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExpCheckIdList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    iget-object v4, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v4}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getExpCheckValueList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [F

    move v5, v1

    :goto_1
    array-length v6, v3

    if-ge v5, v6, :cond_3

    aget v2, v4, v5

    const/4 v6, 0x0

    cmpl-float v2, v2, v6

    if-lez v2, :cond_1

    invoke-virtual {p1}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v2

    aget v7, v3, v5

    aget v2, v2, v7

    aget v7, v4, v5

    cmpl-float v2, v2, v7

    if-ltz v2, :cond_1

    goto :goto_2

    :cond_1
    aget v2, v4, v5

    cmpg-float v2, v2, v6

    if-gtz v2, :cond_2

    invoke-virtual {p1}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v2

    aget v6, v3, v5

    aget v2, v2, v6

    aget v6, v4, v5

    neg-float v6, v6

    cmpg-float v2, v2, v6

    if-gtz v2, :cond_2

    :goto_2
    add-int/lit8 v5, v5, 0x1

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    move v2, v1

    :cond_3
    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    return v2

    :cond_6
    :goto_4
    return v1
.end method


# virtual methods
.method public checkExtraScene(Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;)V
    .locals 6

    const-string v0, "ExtraSceneEngine"

    if-nez p1, :cond_0

    const-string p0, "info is null"

    :goto_0
    invoke-static {v0, p0}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->Q:Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigValue;

    if-nez v1, :cond_1

    const-string p0, "mConfigValue is null"

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mConfigValue -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->Q:Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigValue;

    invoke-virtual {v2}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigValue;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConfigValue"

    invoke-static {v2, v1}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->Q:Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigValue;

    iget v1, v1, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigValue;->configHeadwearStyleID:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->S:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    iget-object v4, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->Q:Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigValue;

    iget v4, v4, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigValue;->configHeadwearStyleID:I

    invoke-virtual {v3}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getHeadWear()I

    move-result v5

    if-ne v4, v5, :cond_3

    invoke-virtual {v3}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getHeadWearColor()I

    move-result v4

    if-eq v4, v2, :cond_4

    iget-object v4, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->Q:Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigValue;

    iget v4, v4, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigValue;->configHeadwearColorID:I

    invoke-virtual {v3}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getHeadWearColor()I

    move-result v5

    if-ne v4, v5, :cond_3

    :cond_4
    iput-object v3, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    :cond_5
    iget-object v1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    if-nez v1, :cond_6

    const-string p0, "mExtraSceneInfo is null"

    goto :goto_0

    :cond_6
    invoke-virtual {v1}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v1, "DogHat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v2, 0x9

    goto :goto_1

    :sswitch_1
    const-string v1, "ChickHat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_2
    const-string v1, "ClownHat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_3
    const-string v1, "RabbitTeeth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_4
    const-string v1, "RabbitEars"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_5
    const-string v1, "AngelWings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_6
    const-string v1, "AstronautHat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v2, 0x8

    goto :goto_1

    :sswitch_7
    const-string v1, "MagicHat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_8
    const-string v1, "WizardHat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_9
    const-string v1, "EmojiHelmet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v2, 0x7

    :cond_7
    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->k(Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;)V

    goto :goto_2

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->i(Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;)V

    goto :goto_2

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->e(Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;)V

    goto :goto_2

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->g(Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;)V

    goto :goto_2

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->f(Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;)V

    goto :goto_2

    :pswitch_5
    invoke-direct {p0, p1}, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->a(Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;)V

    goto :goto_2

    :pswitch_6
    invoke-direct {p0, p1}, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->b(Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;)V

    goto :goto_2

    :pswitch_7
    invoke-direct {p0, p1}, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->h(Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;)V

    goto :goto_2

    :pswitch_8
    invoke-direct {p0, p1}, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->c(Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;)V

    goto :goto_2

    :pswitch_9
    invoke-direct {p0, p1}, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->d(Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5b20b3cd -> :sswitch_9
        -0x1faf86f0 -> :sswitch_8
        -0x502632 -> :sswitch_7
        0x548caa -> :sswitch_6
        0x23c29e67 -> :sswitch_5
        0x2b7a7f37 -> :sswitch_4
        0x44aa696e -> :sswitch_3
        0x4539b2fe -> :sswitch_2
        0x66487f0f -> :sswitch_1
        0x7a55a7df -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public resetExtraScene()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->V:I

    iput v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->W:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->X:I

    iput v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->U:I

    iput v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->Z:I

    iput v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->aa:I

    iput v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->Y:I

    iget-object v1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->P:Lcom/arcsoft/avatar/AvatarEngine;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getOldToothPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->P:Lcom/arcsoft/avatar/AvatarEngine;

    iget-object v2, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v2}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getOldToothPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/arcsoft/avatar/AvatarEngine;->setToothTexture(Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v1}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getOldHeadWearPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->P:Lcom/arcsoft/avatar/AvatarEngine;

    iget-object v2, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v2}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getOldHeadWearPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/arcsoft/avatar/AvatarEngine;->setHeadWearTexture(Ljava/lang/String;)I

    iget-object v1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v1}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->getOldHeadWearPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setAccPath(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setIsOldHeadWearAcc(Z)V

    iget-object v1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v1, v2}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setExtraStatus(I)V

    iget-object v1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v1, v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setLoopCount(I)V

    iget-object v1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v1, v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setEmojiHelmetLeftRandomNum(I)V

    iget-object v1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v1, v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setEmojiHelmetRightRandomNum(I)V

    iget-object v1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    invoke-virtual {v1, v0}, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->setHeadPitchStatus(I)V

    iget-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->ac:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->P:Lcom/arcsoft/avatar/AvatarEngine;

    invoke-virtual {v0, v2, v2}, Lcom/arcsoft/avatar/AvatarEngine;->setHairRenderParam(ZZ)I

    :cond_3
    iget-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->ac:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    :cond_5
    :goto_0
    return-void
.end method

.method public setAvatarEngine(Lcom/arcsoft/avatar/AvatarEngine;)V
    .locals 2

    const-string v0, "ExtraSceneEngine"

    const-string v1, "-- setAvatarEngine --"

    invoke-static {v0, v1}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->P:Lcom/arcsoft/avatar/AvatarEngine;

    iget-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->Q:Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigValue;

    invoke-virtual {p1, v0}, Lcom/arcsoft/avatar/AvatarEngine;->getConfigValue(Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigValue;)V

    iget-object p1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->ac:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;

    return-void
.end method
