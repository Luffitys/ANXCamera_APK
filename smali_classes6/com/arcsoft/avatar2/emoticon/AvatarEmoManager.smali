.class public Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final A:Ljava/lang/String; = "RIGHT_EYE_ROTATE"

.field private static final B:Ljava/lang/String; = "TONGUE_STATE"

.field private static final C:Ljava/lang/String; = "MORPH_SIZE"

.field private static final D:Ljava/lang/String; = "MORPH_VALUE"

.field private static final E:Ljava/lang/String; = "KEY_X"

.field public static final EMO_GIF_MODE:I = 0x1

.field public static final EMO_VIDEO_MODE:I = 0x0

.field private static final F:Ljava/lang/String; = "KEY_Y"

.field private static final G:Ljava/lang/String; = "KEY_COLOR"

.field private static final H:Ljava/lang/String; = "BACK_GROUND"

.field private static final I:Ljava/lang/String; = "THUMB_INDEX"

.field private static final J:Ljava/lang/String; = "SCALE_LEVEL"

.field private static final a:Ljava/lang/String; = "AvatarEmoManager"

.field private static final p:Ljava/lang/String; = "emo"

.field private static final q:Ljava/lang/String; = "emo_map.xml"

.field private static final r:Ljava/lang/String; = "foreground"

.field private static final s:Ljava/lang/String; = "background"

.field private static final t:Ljava/lang/String; = "thumbnail"

.field private static final u:Ljava/lang/String; = "ANIM_NAME"

.field private static final v:Ljava/lang/String; = "KEY_SIZE"

.field private static final w:Ljava/lang/String; = "KEY_INDEX"

.field private static final x:Ljava/lang/String; = "KEY_TIME"

.field private static final y:Ljava/lang/String; = "HEAD_ROTATE"

.field private static final z:Ljava/lang/String; = "LEFT_EYE_ROTATE"


# instance fields
.field private b:Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager$AvatarEmoResCallback;

.field private c:Lcom/arcsoft/avatar2/AvatarEngine;

.field private d:[I

.field private e:Z

.field private f:Lcom/arcsoft/avatar2/recoder/MediaManager;

.field private g:Landroid/opengl/EGLContext;

.field private h:I

.field private i:Ljava/util/ArrayList;

.field private volatile j:Z

.field private k:I

.field private l:Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;

.field private m:[B

.field private n:Landroid/util/Size;

.field private o:I


# direct methods
.method public constructor <init>(Lcom/arcsoft/avatar2/AvatarEngine;Ljava/lang/String;ILcom/arcsoft/avatar2/emoticon/AvatarEmoManager$AvatarEmoResCallback;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->c:Lcom/arcsoft/avatar2/AvatarEngine;

    const/4 v1, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->d:[I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->e:Z

    iput v1, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->h:I

    iput-object v0, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->i:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->j:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->k:I

    iput-object v0, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->l:Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;

    iput-object v0, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->m:[B

    iput-object v0, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->n:Landroid/util/Size;

    iput v2, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->o:I

    iput-object p4, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->b:Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager$AvatarEmoResCallback;

    iput-object p1, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->c:Lcom/arcsoft/avatar2/AvatarEngine;

    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object p1, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->g:Landroid/opengl/EGLContext;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->i:Ljava/util/ArrayList;

    add-int/lit8 p1, p3, 0x1

    iput p1, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->k:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "floderPath = "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "AvatarEmoManager"

    invoke-static {p4, p1}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "faceColorId = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->c:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {p1, v1, v1}, Lcom/arcsoft/avatar2/AvatarEngine;->setAnimationParam(ZI)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "emo_map.xml"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->d(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p4, v2}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".txt"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/arcsoft/avatar2/emoticon/EmoInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private a()I
    .locals 0

    iget p0, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->h:I

    return p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lcom/arcsoft/avatar2/emoticon/EmoInfo;
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "thumbnail"

    const-string v5, "KEY_INDEX"

    const-string v6, "ANIM_NAME"

    const-string v7, "error = "

    const-string v8, "AvatarEmoManager"

    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_b

    :try_start_1
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "infoFilePath = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\n parentPath = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v11, Ljava/io/BufferedReader;

    invoke-direct {v11, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_b

    const-string v12, ""

    move-object v14, v12

    const/4 v13, 0x0

    const/4 v15, 0x0

    :goto_0
    :try_start_2
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1d

    move-object/from16 p1, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_b

    move-object/from16 v16, v7

    :try_start_3
    const-string v7, "read_file line -> "

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v12, "MORPH_VALUE"

    if-nez v7, :cond_1b

    :try_start_4
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0

    move-object/from16 v17, v8

    const-string v8, "background"

    move-object/from16 v18, v10

    const-string v10, "foreground"

    move-object/from16 v19, v2

    const-string v2, ".png"

    move-object/from16 v20, v11

    const-string v11, "/"

    if-eqz v9, :cond_0

    :try_start_5
    new-instance v9, Lcom/arcsoft/avatar2/emoticon/EmoInfo;

    invoke-direct {v9}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;-><init>()V

    invoke-virtual {v9, v3}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->setFilePath(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->setThumbForGroundPath(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->setThumbBgGroundPath(Ljava/lang/String;)V

    move-object/from16 v22, v4

    move-object v13, v9

    goto/16 :goto_9

    :cond_0
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    new-instance v2, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v13}, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;-><init>(Lcom/arcsoft/avatar2/emoticon/EmoInfo;)V

    move-object v15, v2

    :goto_1
    move-object/from16 v22, v4

    goto/16 :goto_9

    :cond_1
    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v13, v7}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->setEmoName(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v9, "KEY_SIZE"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v13, v2}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->setEmoMaxCount(I)V

    goto :goto_1

    :cond_3
    const-string v9, "KEY_X"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v13, v2}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->setTranslationX(F)V

    goto :goto_1

    :cond_4
    const-string v9, "KEY_Y"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v13, v2}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->setTranslationY(F)V

    goto :goto_1

    :cond_5
    const-string v9, "KEY_COLOR"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/16 v21, 0x0

    move-object/from16 v22, v4

    const/4 v4, 0x1

    if-eqz v9, :cond_7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v4, :cond_6

    goto :goto_2

    :cond_6
    move/from16 v4, v21

    :goto_2
    invoke-virtual {v13, v4}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->needFaceColor(Z)V

    goto/16 :goto_9

    :cond_7
    const-string v9, "BACK_GROUND"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v4, :cond_8

    goto :goto_3

    :cond_8
    move/from16 v4, v21

    :goto_3
    invoke-virtual {v13, v4}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->setMultipleBG(Z)V

    goto/16 :goto_9

    :cond_9
    const-string v9, "THUMB_INDEX"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v13, v2}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->setThumbFrameIndex(I)V

    goto/16 :goto_9

    :cond_a
    const-string v9, "SCALE_LEVEL"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v13, v2}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->setScaleLevel(F)V

    goto/16 :goto_9

    :cond_b
    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v15, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->index:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v15, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->index:I

    add-int/2addr v12, v4

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->isNeedFaceColor()Z

    move-result v12

    if-eqz v12, :cond_c

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/skin_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->k:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v15, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->index:I

    add-int/2addr v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_c
    iput-object v9, v15, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->foreGroundPath:Ljava/lang/String;

    invoke-virtual {v13}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->getEmoImageSize()Landroid/util/Size;

    move-result-object v10

    if-nez v10, :cond_d

    invoke-direct {v1, v9}, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->c(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v9

    invoke-virtual {v13, v9}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->setEmoImageSize(Landroid/util/Size;)V

    :cond_d
    invoke-virtual {v13}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->isMultipleBG()Z

    move-result v9

    if-eqz v9, :cond_e

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v15, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->index:I

    add-int/2addr v8, v4

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_4
    iput-object v2, v15, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->backGroundPath:Ljava/lang/String;

    goto/16 :goto_9

    :cond_e
    iget-object v9, v1, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->l:Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;

    if-nez v9, :cond_1a

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v15, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->index:I

    add-int/2addr v8, v4

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->b(Ljava/lang/String;)Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;

    move-result-object v4

    iput-object v4, v1, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->l:Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;

    goto :goto_4

    :cond_f
    const-string v2, "KEY_TIME"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v15, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->time:F

    goto/16 :goto_9

    :cond_10
    const-string v2, "HEAD_ROTATE"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_4

    const-string v8, ","

    if-eqz v2, :cond_12

    :try_start_6
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    new-array v4, v4, [F

    move/from16 v8, v21

    :goto_5
    array-length v9, v2

    if-ge v8, v9, :cond_11

    aget-object v9, v2, v8

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    aput v9, v4, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_11
    iget-object v2, v15, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->processInfo:Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;

    invoke-virtual {v2, v4}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->setOrientations([F)V

    goto/16 :goto_9

    :cond_12
    const-string v2, "LEFT_EYE_ROTATE"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    new-array v4, v4, [F

    move/from16 v8, v21

    :goto_6
    array-length v9, v2

    if-ge v8, v9, :cond_13

    aget-object v9, v2, v8

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    aput v9, v4, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_13
    iget-object v2, v15, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->processInfo:Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;

    invoke-virtual {v2, v4}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->setOrientationLeftEyes([F)V

    goto/16 :goto_9

    :cond_14
    const-string v2, "RIGHT_EYE_ROTATE"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    new-array v4, v4, [F

    move/from16 v8, v21

    :goto_7
    array-length v9, v2

    if-ge v8, v9, :cond_15

    aget-object v9, v2, v8

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    aput v9, v4, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_15
    iget-object v2, v15, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->processInfo:Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;

    invoke-virtual {v2, v4}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->setOrientationRightEyes([F)V

    goto :goto_9

    :cond_16
    const-string v2, "TONGUE_STATE"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, v15, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->processInfo:Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->setTongueStatus(I)V

    goto :goto_9

    :cond_17
    const-string v2, "MORPH_SIZE"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    goto :goto_9

    :cond_18
    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-static {}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getMaxExpressNum()I

    move-result v2

    new-array v2, v2, [F

    const-string v9, ";"

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    move/from16 v10, v21

    :goto_8
    array-length v11, v9

    if-ge v10, v11, :cond_19

    aget-object v11, v9, v10

    invoke-virtual {v11, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    aget-object v12, v11, v4

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    aget-object v11, v11, v21

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    aput v11, v2, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_19
    iget-object v4, v15, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->processInfo:Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;

    invoke-virtual {v4, v2}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->setExpWeights([F)V

    invoke-virtual {v13}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->getEmoExtraInfoList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    :goto_9
    move-object/from16 v12, p1

    move-object v14, v7

    goto :goto_a

    :cond_1b
    move-object/from16 v19, v2

    move-object/from16 v22, v4

    move-object/from16 v17, v8

    move-object/from16 v18, v10

    move-object/from16 v20, v11

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-static {}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getMaxExpressNum()I

    move-result v2

    new-array v2, v2, [F

    iget-object v4, v15, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->processInfo:Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;

    invoke-virtual {v4, v2}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->setExpWeights([F)V

    invoke-virtual {v13}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->getEmoExtraInfoList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v12, p1

    move-object v14, v12

    goto :goto_a

    :cond_1c
    move-object/from16 v12, p1

    :goto_a
    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move-object/from16 v10, v18

    move-object/from16 v2, v19

    move-object/from16 v11, v20

    move-object/from16 v4, v22

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_b

    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v4, v8

    move-object/from16 v3, v16

    goto/16 :goto_d

    :catch_2
    move-exception v0

    move-object v1, v0

    move-object v4, v8

    move-object/from16 v3, v16

    goto/16 :goto_e

    :catch_3
    move-exception v0

    move-object v1, v0

    move-object v4, v8

    move-object/from16 v3, v16

    goto/16 :goto_f

    :cond_1d
    move-object/from16 v19, v2

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v18, v10

    move-object/from16 v20, v11

    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedReader;->close()V

    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStreamReader;->close()V

    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_4

    return-object v13

    :catch_4
    move-exception v0

    goto :goto_c

    :catch_5
    move-exception v0

    move-object v1, v0

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    goto :goto_d

    :catch_6
    move-exception v0

    move-object v1, v0

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    goto/16 :goto_e

    :catch_7
    move-exception v0

    move-object v1, v0

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    goto/16 :goto_f

    :catch_8
    move-exception v0

    move-object v1, v0

    move-object v3, v7

    move-object v4, v8

    goto :goto_d

    :catch_9
    move-exception v0

    move-object v1, v0

    move-object v3, v7

    move-object v4, v8

    goto :goto_e

    :catch_a
    move-exception v0

    move-object v1, v0

    move-object v3, v7

    move-object v4, v8

    goto/16 :goto_f

    :catch_b
    move-exception v0

    move-object/from16 v16, v7

    :goto_b
    move-object/from16 v17, v8

    :goto_c
    move-object v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v16

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v4, v17

    invoke-static {v4, v2}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_10

    :catch_c
    move-exception v0

    move-object v3, v7

    move-object v4, v8

    move-object v1, v0

    :goto_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_10

    :catch_d
    move-exception v0

    move-object v3, v7

    move-object v4, v8

    move-object v1, v0

    :goto_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10

    :catch_e
    move-exception v0

    move-object v3, v7

    move-object v4, v8

    move-object v1, v0

    :goto_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_10
    const/4 v1, 0x0

    return-object v1
.end method

.method private a(Ljava/lang/String;)Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getBackGroundInfo -> "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AvatarEmoManager"

    invoke-static {v0, p0}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Lcom/arcsoft/avatar2/util/AsvloffscreenUtil;->buildRGBA(Landroid/graphics/Bitmap;)Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;

    move-result-object p1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-object p1
.end method

.method private a(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mode -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AvatarEmoManager"

    invoke-static {v1, v0}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->h:I

    return-void
.end method

.method private b(Ljava/lang/String;)Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRGBAInfo -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AvatarEmoManager"

    invoke-static {v1, v0}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int v2, v1, v0

    mul-int/lit8 v2, v2, 0x4

    new-array v2, v2, [B

    iget-object p0, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->c:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/arcsoft/avatar2/AvatarEngine;->readRGBA(Ljava/lang/String;II[B)I

    new-instance p0, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;

    invoke-direct {p0, v1, v0, v2}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;-><init>(II[B)V

    return-object p0
.end method

.method private b(I)V
    .locals 1

    if-lez p1, :cond_1

    iget-object v0, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->f:Lcom/arcsoft/avatar2/recoder/MediaManager;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->e:Z

    if-eqz p0, :cond_1

    invoke-virtual {v0, p1}, Lcom/arcsoft/avatar2/recoder/MediaManager;->drawSurfaceWithTextureId(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private c(Ljava/lang/String;)Landroid/util/Size;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getBitmapSize -> : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AvatarEmoManager"

    invoke-static {v0, p0}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    new-instance p0, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-direct {p0, v0, p1}, Landroid/util/Size;-><init>(II)V

    return-object p0
.end method

.method private c(I)V
    .locals 8

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-lez p1, :cond_0

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    if-lez p1, :cond_1

    move v5, v0

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    if-lez p1, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    move v6, v2

    if-lez p1, :cond_3

    move v7, v0

    goto :goto_3

    :cond_3
    move v7, v1

    :goto_3
    new-instance v0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarTongueAnimationParam;

    move-object v2, v0

    move v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarTongueAnimationParam;-><init>(IFFIF)V

    iget-object p0, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->c:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {p0, v0}, Lcom/arcsoft/avatar2/AvatarEngine;->setTongueAnimationParam(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarTongueAnimationParam;)I

    return-void
.end method

.method private d(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4

    const/4 p0, 0x0

    :try_start_0
    const-string v0, "AvatarEmoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFileNameList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object p1

    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p1

    const-string v2, "UTF-8"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    move-object v2, p0

    :goto_0
    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "emo"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    return-object v0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :goto_2
    return-object p0
.end method

.method private e(Ljava/lang/String;)Z
    .locals 1

    const/4 p0, 0x0

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_0

    return p0

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return p0
.end method


# virtual methods
.method public emoGLRender(Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;)V
    .locals 14

    iget-object v0, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->c:Lcom/arcsoft/avatar2/AvatarEngine;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->h:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->n:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->n:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->m:[B

    if-eqz v1, :cond_1

    array-length v1, v1

    if-eq v1, v0, :cond_2

    :cond_1
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->m:[B

    :cond_2
    iget-object v1, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->c:Lcom/arcsoft/avatar2/AvatarEngine;

    iget-object v2, p1, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->foreGroundPath:Ljava/lang/String;

    iget-object v0, p1, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->asBackGround:Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->l:Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;

    :cond_3
    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->n:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    mul-int/lit8 v7, v0, 0x2

    iget-object v0, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->n:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    mul-int/lit8 v8, v0, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->d:[I

    iget-object v12, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->m:[B

    const/4 v13, 0x0

    invoke-virtual/range {v1 .. v13}, Lcom/arcsoft/avatar2/AvatarEngine;->renderWithBackground(Ljava/lang/String;Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;IZIIIIZ[I[BZ)I

    iget v0, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->h:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->d:[I

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->b(I)V

    :cond_4
    const/4 p0, 0x0

    iput-object p0, p1, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->asForeGround:Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;

    iput-object p0, p1, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->asBackGround:Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;

    return-void
.end method

.method public emoProcess(Lcom/arcsoft/avatar2/emoticon/EmoInfo;)V
    .locals 13

    iget-object v0, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->c:Lcom/arcsoft/avatar2/AvatarEngine;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->getTranslationX()F

    move-result v2

    aput v2, v0, v1

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->getTranslationY()F

    move-result v3

    aput v3, v0, v2

    iget-object v2, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->c:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->getScaleLevel()F

    move-result v3

    invoke-virtual {v2, v1, v3, v0}, Lcom/arcsoft/avatar2/AvatarEngine;->setRenderScene3F(ZF[F)V

    iget-object v0, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->c:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {v0, v1, v1}, Lcom/arcsoft/avatar2/AvatarEngine;->setAnimationParam(ZI)V

    :cond_0
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->getEmoImageSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->getEmoImageSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->n:Landroid/util/Size;

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->getEmoExtraInfoList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v2, 0x0

    move-wide v4, v2

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;

    iget-boolean v7, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->j:Z

    const-string v8, "AvatarEmoManager"

    if-eqz v7, :cond_2

    const-string p1, "process_render -> emoProcess release & break"

    invoke-static {v8, p1}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    cmp-long v7, v4, v2

    if-lez v7, :cond_4

    iget v9, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->h:I

    if-nez v9, :cond_4

    if-gez v7, :cond_3

    move-wide v4, v2

    :cond_3
    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->isMultipleBG()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, v6, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->backGroundPath:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->a(Ljava/lang/String;)Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;

    move-result-object v7

    iput-object v7, v6, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->asBackGround:Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;

    :cond_5
    iget-object v7, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->c:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {v7, v1, v1}, Lcom/arcsoft/avatar2/AvatarEngine;->setAnimationParam(ZI)V

    iget v7, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->o:I

    iget-object v9, v6, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->processInfo:Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;

    invoke-virtual {v9}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getTongueStatus()I

    move-result v9

    if-eq v7, v9, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mTongueState = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->o:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", info tong = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->processInfo:Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;

    invoke-virtual {v9}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getTongueStatus()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v6, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->processInfo:Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;

    invoke-virtual {v7}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getTongueStatus()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->c(I)V

    iget-object v7, v6, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->processInfo:Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;

    invoke-virtual {v7}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getTongueStatus()I

    move-result v7

    iput v7, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->o:I

    :cond_6
    iget-object v7, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->c:Lcom/arcsoft/avatar2/AvatarEngine;

    iget-object v9, v6, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->processInfo:Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;

    invoke-virtual {v7, v9}, Lcom/arcsoft/avatar2/AvatarEngine;->setProcessInfo(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;)I

    const-wide/16 v9, 0x28

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v9, v11

    add-long/2addr v4, v9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sleepTime = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->b:Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager$AvatarEmoResCallback;

    if-eqz v7, :cond_1

    invoke-interface {v7, v6}, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager$AvatarEmoResCallback;->onFrameRefresh(Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;)V

    goto/16 :goto_0

    :cond_7
    :goto_1
    iget-object p0, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->b:Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager$AvatarEmoResCallback;

    if-eqz p0, :cond_8

    invoke-interface {p0}, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager$AvatarEmoResCallback;->onMakeMediaEnd()V

    :cond_8
    return-void
.end method

.method public getEmoList()Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->i:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getFaceColorId()I
    .locals 0

    iget p0, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->k:I

    return p0
.end method

.method public getImageData(Lcom/arcsoft/avatar2/emoticon/EmoInfo;II)[B
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->c:Lcom/arcsoft/avatar2/AvatarEngine;

    const/4 v13, 0x0

    if-eqz v1, :cond_7

    if-eqz p1, :cond_7

    if-lez p2, :cond_7

    if-gtz p3, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->getThumbFrameIndex()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->getEmoMaxCount()I

    move-result v2

    if-le v1, v2, :cond_1

    return-object v13

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->getEmoExtraInfoList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->getThumbFrameIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;

    if-nez v14, :cond_2

    return-object v13

    :cond_2
    const/4 v1, 0x3

    new-array v1, v1, [F

    invoke-virtual/range {p1 .. p1}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->getTranslationX()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->getTranslationY()F

    move-result v4

    aput v4, v1, v2

    iget-object v2, v0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->c:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual/range {p1 .. p1}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->getScaleLevel()F

    move-result v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/arcsoft/avatar2/AvatarEngine;->setRenderScene3F(ZF[F)V

    iget-object v1, v0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->c:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {v1, v3, v3}, Lcom/arcsoft/avatar2/AvatarEngine;->setAnimationParam(ZI)V

    mul-int v1, p2, p3

    mul-int/lit8 v1, v1, 0x4

    new-array v15, v1, [B

    invoke-virtual/range {p1 .. p1}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->isMultipleBG()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->getThumbBgGroundPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->getThumbBgGroundPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    iget-object v1, v14, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->backGroundPath:Ljava/lang/String;

    :goto_0
    invoke-direct {v0, v1}, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->a(Ljava/lang/String;)Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;

    move-result-object v1

    iput-object v1, v14, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->asBackGround:Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;

    :cond_4
    iget-object v1, v14, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->processInfo:Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;

    invoke-virtual {v1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getTongueStatus()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->c(I)V

    iget-object v1, v0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->c:Lcom/arcsoft/avatar2/AvatarEngine;

    iget-object v2, v14, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->processInfo:Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;

    invoke-virtual {v1, v2}, Lcom/arcsoft/avatar2/AvatarEngine;->setProcessInfo(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;)I

    iget-object v1, v0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->c:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual/range {p1 .. p1}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->getThumbForGroundPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->getThumbForGroundPath()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_5
    iget-object v2, v14, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->foreGroundPath:Ljava/lang/String;

    :goto_1
    iget-object v3, v14, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->asBackGround:Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->l:Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;

    :cond_6
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, v0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->d:[I

    const/4 v12, 0x0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move/from16 v6, p2

    move/from16 v7, p3

    move-object v11, v15

    invoke-virtual/range {v0 .. v12}, Lcom/arcsoft/avatar2/AvatarEngine;->renderWithBackground(Ljava/lang/String;Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;IZIIIIZ[I[BZ)I

    iput-object v13, v14, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->asBackGround:Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;

    return-object v15

    :cond_7
    :goto_2
    return-object v13
.end method

.method public isRelease()Z
    .locals 0

    iget-boolean p0, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->j:Z

    return p0
.end method

.method public release()V
    .locals 2

    const-string v0, "AvatarEmoManager"

    const-string v1, "-> AvatarEmoManager release"

    invoke-static {v0, v1}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->j:Z

    return-void
.end method

.method public renderEmoThumb(Lcom/arcsoft/avatar2/emoticon/EmoInfo;II)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->c:Lcom/arcsoft/avatar2/AvatarEngine;

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    if-eqz v1, :cond_7

    if-lez p2, :cond_7

    if-gtz p3, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->getThumbFrameIndex()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->getEmoMaxCount()I

    move-result v4

    if-le v2, v4, :cond_1

    return v3

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->getEmoExtraInfoList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->getThumbFrameIndex()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;

    if-nez v15, :cond_2

    return v3

    :cond_2
    const/4 v2, 0x3

    new-array v2, v2, [F

    invoke-virtual/range {p1 .. p1}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->getTranslationX()F

    move-result v4

    aput v4, v2, v3

    invoke-virtual/range {p1 .. p1}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->getTranslationY()F

    move-result v4

    const/16 v16, 0x1

    aput v4, v2, v16

    iget-object v4, v0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->c:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual/range {p1 .. p1}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->getScaleLevel()F

    move-result v5

    invoke-virtual {v4, v3, v5, v2}, Lcom/arcsoft/avatar2/AvatarEngine;->setRenderScene3F(ZF[F)V

    iget-object v2, v0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->c:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {v2, v3, v3}, Lcom/arcsoft/avatar2/AvatarEngine;->setAnimationParam(ZI)V

    mul-int v2, p2, p3

    mul-int/lit8 v2, v2, 0x4

    new-array v14, v2, [B

    invoke-virtual/range {p1 .. p1}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->isMultipleBG()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->getThumbBgGroundPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->getThumbBgGroundPath()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    iget-object v2, v15, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->backGroundPath:Ljava/lang/String;

    :goto_0
    invoke-direct {v0, v2}, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->a(Ljava/lang/String;)Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;

    move-result-object v2

    iput-object v2, v15, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->asBackGround:Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;

    :cond_4
    iget-object v2, v15, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->processInfo:Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;

    invoke-virtual {v2}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getTongueStatus()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->c(I)V

    iget-object v2, v0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->c:Lcom/arcsoft/avatar2/AvatarEngine;

    iget-object v3, v15, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->processInfo:Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;

    invoke-virtual {v2, v3}, Lcom/arcsoft/avatar2/AvatarEngine;->setProcessInfo(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;)I

    iget-object v2, v0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->c:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual/range {p1 .. p1}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->getThumbForGroundPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->getThumbForGroundPath()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_5
    iget-object v3, v15, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->foreGroundPath:Ljava/lang/String;

    :goto_1
    iget-object v4, v15, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->asBackGround:Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;

    if-nez v4, :cond_6

    iget-object v4, v0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->l:Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;

    :cond_6
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, v0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->d:[I

    const/4 v0, 0x0

    move/from16 v8, p2

    move/from16 v9, p3

    move-object v13, v14

    move-object/from16 v17, v15

    move-object v15, v14

    move v14, v0

    invoke-virtual/range {v2 .. v14}, Lcom/arcsoft/avatar2/AvatarEngine;->renderWithBackground(Ljava/lang/String;Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;IZIIIIZ[I[BZ)I

    invoke-virtual {v1, v15}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->setThumbnailData([B)V

    const/4 v0, 0x0

    move-object/from16 v2, v17

    iput-object v0, v2, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->asBackGround:Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;

    return v16

    :cond_7
    :goto_2
    return v3
.end method

.method public renderImageData(Lcom/arcsoft/avatar2/emoticon/EmoInfo;II)Ljava/nio/ByteBuffer;
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->c:Lcom/arcsoft/avatar2/AvatarEngine;

    const/4 v7, 0x0

    if-eqz v1, :cond_7

    if-eqz p1, :cond_7

    if-lez p2, :cond_7

    if-gtz p3, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->getThumbFrameIndex()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->getEmoMaxCount()I

    move-result v2

    if-le v1, v2, :cond_1

    return-object v7

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->getEmoExtraInfoList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->getThumbFrameIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;

    if-nez v8, :cond_2

    return-object v7

    :cond_2
    const/4 v1, 0x3

    new-array v1, v1, [F

    invoke-virtual/range {p1 .. p1}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->getTranslationX()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->getTranslationY()F

    move-result v4

    aput v4, v1, v2

    iget-object v2, v0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->c:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual/range {p1 .. p1}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->getScaleLevel()F

    move-result v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/arcsoft/avatar2/AvatarEngine;->setRenderScene3F(ZF[F)V

    iget-object v1, v0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->c:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {v1, v3, v3}, Lcom/arcsoft/avatar2/AvatarEngine;->setAnimationParam(ZI)V

    invoke-virtual/range {p1 .. p1}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->isMultipleBG()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->getThumbBgGroundPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->getThumbBgGroundPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    iget-object v1, v8, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->backGroundPath:Ljava/lang/String;

    :goto_0
    invoke-direct {v0, v1}, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->a(Ljava/lang/String;)Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;

    move-result-object v1

    iput-object v1, v8, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->asBackGround:Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;

    :cond_4
    iget-object v1, v8, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->processInfo:Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;

    invoke-virtual {v1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getTongueStatus()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->c(I)V

    iget-object v1, v0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->c:Lcom/arcsoft/avatar2/AvatarEngine;

    iget-object v2, v8, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->processInfo:Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;

    invoke-virtual {v1, v2}, Lcom/arcsoft/avatar2/AvatarEngine;->setProcessInfo(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;)I

    iget-object v9, v0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->c:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual/range {p1 .. p1}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->getThumbForGroundPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->getThumbForGroundPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_5
    iget-object v1, v8, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->foreGroundPath:Ljava/lang/String;

    :goto_1
    move-object v10, v1

    iget-object v1, v8, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->asBackGround:Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;

    if-nez v1, :cond_6

    iget-object v1, v0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->l:Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;

    :cond_6
    move-object v11, v1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    mul-int/lit8 v15, p2, 0x2

    mul-int/lit8 v16, p3, 0x2

    const/16 v17, 0x0

    const/16 v18, 0x0

    iget-object v1, v0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->d:[I

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v19, v1

    invoke-virtual/range {v9 .. v21}, Lcom/arcsoft/avatar2/AvatarEngine;->renderWithBackground(Ljava/lang/String;Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;IZIIIIZ[I[BZ)I

    iget-object v1, v0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->c:Lcom/arcsoft/avatar2/AvatarEngine;

    iget-object v0, v0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->d:[I

    aget v0, v0, v3

    invoke-virtual {v1, v0, v3, v3, v7}, Lcom/arcsoft/avatar2/AvatarEngine;->renderBackgroundWithTexture(IIZ[F)I

    mul-int v0, p2, p3

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v4, 0x1908

    const/16 v5, 0x1401

    move/from16 v2, p2

    move/from16 v3, p3

    move-object v6, v9

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    iput-object v7, v8, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->asBackGround:Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;

    return-object v9

    :cond_7
    :goto_2
    return-object v7
.end method

.method public reset()V
    .locals 3

    iget-object v0, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->c:Lcom/arcsoft/avatar2/AvatarEngine;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/arcsoft/avatar2/AvatarEngine;->setRenderScene(ZF)V

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->o:I

    iput-boolean v1, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->j:Z

    return-void
.end method

.method public resumeRecording()V
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->f:Lcom/arcsoft/avatar2/recoder/MediaManager;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->e:Z

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/recoder/MediaManager;->resumeRecording()I

    :cond_0
    return-void
.end method

.method public setEmoList(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->i:Ljava/util/ArrayList;

    return-void
.end method

.method public setFaceColorId(I)V
    .locals 6

    iget v0, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->k:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->k:I

    iget-object p1, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->i:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->isNeedFaceColor()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->getEmoExtraInfoList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "foreground"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/skin_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->k:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->index:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->foreGroundPath:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setFaceColorId -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->foreGroundPath:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AvatarEmoManager"

    invoke-static {v3, v2}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public startRecording(Ljava/io/FileDescriptor;IIIILjava/lang/String;)V
    .locals 8
    .param p1    # Ljava/io/FileDescriptor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p3, :cond_7

    if-eqz p4, :cond_7

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    rem-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    add-int/lit8 p3, p3, 0x1

    :cond_1
    move v2, p3

    rem-int/lit8 p3, p4, 0x2

    if-eqz p3, :cond_2

    add-int/lit8 p4, p4, 0x1

    :cond_2
    move v3, p4

    iget-object p3, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->f:Lcom/arcsoft/avatar2/recoder/MediaManager;

    if-nez p3, :cond_6

    if-eqz p2, :cond_4

    const/16 p3, 0x5a

    if-eq p3, p2, :cond_4

    const/16 p3, 0xb4

    if-eq p3, p2, :cond_4

    const/16 p3, 0x10e

    if-ne p3, p2, :cond_3

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "StickerApi-> startRecording(...) screenOrientation = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is invalid"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_0
    sget-object p3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iget-object p4, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->g:Landroid/opengl/EGLContext;

    if-ne p3, p4, :cond_5

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object p3

    iput-object p3, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->g:Landroid/opengl/EGLContext;

    :cond_5
    new-instance p3, Lcom/arcsoft/avatar2/recoder/MediaManager;

    const/16 v4, 0x5a

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p3

    move-object v1, p1

    move v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/arcsoft/avatar2/recoder/MediaManager;-><init>(Ljava/io/FileDescriptor;IIIZILcom/arcsoft/avatar2/recoder/RecordingListener;)V

    iput-object p3, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->f:Lcom/arcsoft/avatar2/recoder/MediaManager;

    const/4 p1, 0x1

    invoke-virtual {p3, p1}, Lcom/arcsoft/avatar2/recoder/MediaManager;->setEncoderCount(I)V

    iget-object p2, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->f:Lcom/arcsoft/avatar2/recoder/MediaManager;

    iget-object p3, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->g:Landroid/opengl/EGLContext;

    invoke-virtual {p2, p3, p5, p1, p6}, Lcom/arcsoft/avatar2/recoder/MediaManager;->initVideoEncoderWithSharedContext(Landroid/opengl/EGLContext;IZLjava/lang/String;)V

    iget-object p2, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->f:Lcom/arcsoft/avatar2/recoder/MediaManager;

    invoke-virtual {p2}, Lcom/arcsoft/avatar2/recoder/MediaManager;->startRecording()V

    iput-boolean p1, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->e:Z

    return-void

    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Recording has been started already."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_1
    return-void
.end method

.method public startRecording(Ljava/lang/String;IIIILjava/lang/String;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p3, :cond_7

    if-eqz p4, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    rem-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    add-int/lit8 p3, p3, 0x1

    :cond_1
    move v2, p3

    rem-int/lit8 p3, p4, 0x2

    if-eqz p3, :cond_2

    add-int/lit8 p4, p4, 0x1

    :cond_2
    move v3, p4

    iget-object p3, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->f:Lcom/arcsoft/avatar2/recoder/MediaManager;

    if-nez p3, :cond_6

    if-eqz p2, :cond_4

    const/16 p3, 0x5a

    if-eq p3, p2, :cond_4

    const/16 p3, 0xb4

    if-eq p3, p2, :cond_4

    const/16 p3, 0x10e

    if-ne p3, p2, :cond_3

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "StickerApi-> startRecording(...) screenOrientation = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is invalid"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_0
    sget-object p3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iget-object p4, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->g:Landroid/opengl/EGLContext;

    if-ne p3, p4, :cond_5

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object p3

    iput-object p3, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->g:Landroid/opengl/EGLContext;

    :cond_5
    new-instance p3, Lcom/arcsoft/avatar2/recoder/MediaManager;

    const/16 v4, 0x5a

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p3

    move-object v1, p1

    move v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/arcsoft/avatar2/recoder/MediaManager;-><init>(Ljava/lang/String;IIIZILcom/arcsoft/avatar2/recoder/RecordingListener;)V

    iput-object p3, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->f:Lcom/arcsoft/avatar2/recoder/MediaManager;

    const/4 p1, 0x1

    invoke-virtual {p3, p1}, Lcom/arcsoft/avatar2/recoder/MediaManager;->setEncoderCount(I)V

    iget-object p2, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->f:Lcom/arcsoft/avatar2/recoder/MediaManager;

    iget-object p3, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->g:Landroid/opengl/EGLContext;

    invoke-virtual {p2, p3, p5, p1, p6}, Lcom/arcsoft/avatar2/recoder/MediaManager;->initVideoEncoderWithSharedContext(Landroid/opengl/EGLContext;IZLjava/lang/String;)V

    iget-object p2, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->f:Lcom/arcsoft/avatar2/recoder/MediaManager;

    invoke-virtual {p2}, Lcom/arcsoft/avatar2/recoder/MediaManager;->startRecording()V

    iput-boolean p1, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->e:Z

    return-void

    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Recording has been started already."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_1
    return-void
.end method

.method public stopRecording()V
    .locals 2

    const-string v0, "AvatarEmoManager"

    const-string v1, "process_render -> stopRecording 0"

    invoke-static {v0, v1}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->e:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->f:Lcom/arcsoft/avatar2/recoder/MediaManager;

    if-eqz v1, :cond_1

    const-string v1, "process_render -> stopRecording 1"

    invoke-static {v0, v1}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->resumeRecording()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->e:Z

    iget-object v1, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->f:Lcom/arcsoft/avatar2/recoder/MediaManager;

    invoke-virtual {v1}, Lcom/arcsoft/avatar2/recoder/MediaManager;->stopRecording()V

    iget-object v1, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->f:Lcom/arcsoft/avatar2/recoder/MediaManager;

    invoke-virtual {v1}, Lcom/arcsoft/avatar2/recoder/MediaManager;->releaseFrameQueue()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->f:Lcom/arcsoft/avatar2/recoder/MediaManager;

    :cond_1
    const-string p0, "process_render -> stopRecording 2"

    invoke-static {v0, p0}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
