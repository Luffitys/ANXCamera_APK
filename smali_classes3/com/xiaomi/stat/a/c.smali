.class public Lcom/xiaomi/stat/a/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "EventManager"

.field private static final b:I = 0xa

.field private static final c:I = 0x0

.field private static final d:I = 0x12c

.field private static final e:I = 0x1e000

.field private static final f:I = 0x37

.field private static final g:I = 0x2

.field private static final h:Ljava/lang/String; = "priority DESC, _id ASC"

.field private static final i:I = 0x7

.field private static final j:J = 0x3200000L

.field private static k:Lcom/xiaomi/stat/a/c;


# instance fields
.field private l:Lcom/xiaomi/stat/a/a;

.field private m:Ljava/io/File;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/xiaomi/stat/am;->a()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/stat/a/a;

    invoke-direct {v1, v0}, Lcom/xiaomi/stat/a/a;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xiaomi/stat/a/c;->l:Lcom/xiaomi/stat/a/a;

    const-string v1, "mistat_ev"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/stat/a/c;->m:Ljava/io/File;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/stat/a/c;)Lcom/xiaomi/stat/a/a;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/stat/a/c;->l:Lcom/xiaomi/stat/a/a;

    return-object p0
.end method

.method public static a()Lcom/xiaomi/stat/a/c;
    .locals 2

    sget-object v0, Lcom/xiaomi/stat/a/c;->k:Lcom/xiaomi/stat/a/c;

    if-nez v0, :cond_1

    const-class v0, Lcom/xiaomi/stat/a/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/stat/a/c;->k:Lcom/xiaomi/stat/a/c;

    if-nez v1, :cond_0

    new-instance v1, Lcom/xiaomi/stat/a/c;

    invoke-direct {v1}, Lcom/xiaomi/stat/a/c;-><init>()V

    sput-object v1, Lcom/xiaomi/stat/a/c;->k:Lcom/xiaomi/stat/a/c;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaomi/stat/a/c;->k:Lcom/xiaomi/stat/a/c;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/stat/a/c;[Lcom/xiaomi/stat/a/b;)Lcom/xiaomi/stat/a/k;
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/stat/a/c;->b([Lcom/xiaomi/stat/a/b;)Lcom/xiaomi/stat/a/k;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/xiaomi/stat/MiStatParams;)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/stat/d/c;->b()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mi_av"

    invoke-virtual {p1, v0, p0}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "mi_sv"

    const-string v0, "3.0.13"

    invoke-virtual {p1, p0, v0}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/stat/d/m;->c()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mi_ov"

    invoke-virtual {p1, v0, p0}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/stat/d/m;->d()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mi_ob"

    invoke-virtual {p1, v0, p0}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/stat/am;->a()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/stat/d/l;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "mi_n"

    invoke-virtual {p1, v0, p0}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/stat/am;->a()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/stat/d/m;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "mi_rd"

    invoke-virtual {p1, v0, p0}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v0, "mi_mf"

    invoke-virtual {p1, v0, p0}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "mi_m"

    invoke-virtual {p1, v0, p0}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/stat/d/m;->b()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mi_os"

    invoke-virtual {p1, v0, p0}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/stat/a/c;Lcom/xiaomi/stat/a/l;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/stat/a/c;->b(Lcom/xiaomi/stat/a/l;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/stat/a/c;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/stat/a/c;->b(Ljava/util/ArrayList;)V

    return-void
.end method

.method private a([Lcom/xiaomi/stat/a/b;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 3

    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {v2, p2, p3, p4}, Lcom/xiaomi/stat/a/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private b([Lcom/xiaomi/stat/a/b;)Lcom/xiaomi/stat/a/k;
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "ps"

    const-string v3, "ts"

    const-string v4, "tp"

    const-string v5, "eg"

    const-string v6, "e"

    :try_start_0
    array-length v8, v1

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ne v8, v10, :cond_0

    aget-object v8, v1, v9

    invoke-virtual {v8}, Lcom/xiaomi/stat/a/b;->a()Ljava/lang/String;

    move-result-object v8

    move-object v14, v8

    move v8, v9

    goto :goto_0

    :cond_0
    move v8, v10

    const/4 v14, 0x0

    :goto_0
    iget-object v11, v0, Lcom/xiaomi/stat/a/c;->l:Lcom/xiaomi/stat/a/a;

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    const-string v12, "events"

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "priority DESC, _id ASC"

    invoke-virtual/range {v11 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v12, "_id"

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v10, "sub"

    invoke-interface {v11, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v19, v2

    const-string v2, "is_am"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v20, v3

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    move-object/from16 v21, v3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/16 v22, 0x0

    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v23

    if-eqz v23, :cond_8

    move-object/from16 v24, v3

    move-object/from16 v23, v4

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    move/from16 v25, v12

    invoke-interface {v11, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move/from16 v26, v13

    invoke-interface {v11, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move/from16 v27, v14

    invoke-interface {v11, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-wide/from16 v28, v3

    invoke-interface {v11, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    move/from16 v30, v9

    invoke-interface {v11, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move/from16 v31, v7

    invoke-interface {v11, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move/from16 v32, v10

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    move/from16 v33, v2

    const/4 v2, 0x1

    if-ne v10, v2, :cond_1

    move v10, v2

    goto :goto_2

    :cond_1
    const/4 v10, 0x0

    :goto_2
    if-eqz v8, :cond_3

    invoke-direct {v0, v1, v7, v13, v10}, Lcom/xiaomi/stat/a/c;->a([Lcom/xiaomi/stat/a/b;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_3

    :cond_2
    move-object/from16 v4, v19

    move-object/from16 v13, v20

    move-object/from16 v3, v21

    move-object/from16 v12, v23

    move-object/from16 v1, v24

    goto/16 :goto_7

    :cond_3
    :goto_3
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x37

    add-int v22, v22, v7

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int v22, v22, v7

    :cond_4
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int v22, v22, v7

    :cond_5
    move/from16 v7, v22

    const v10, 0x1e000

    if-le v7, v10, :cond_6

    move-object/from16 v3, v21

    move-object/from16 v1, v24

    const/4 v2, 0x0

    goto/16 :goto_8

    :cond_6
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v10, v6, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v10, v5, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v12, v23

    :try_start_3
    invoke-virtual {v10, v12, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v13, v20

    :try_start_4
    invoke-virtual {v10, v13, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "eid"

    move-wide/from16 v0, v28

    invoke-virtual {v10, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v4, v19

    :try_start_5
    invoke-virtual {v10, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v3, v21

    :try_start_6
    invoke-virtual {v3, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object/from16 v1, v24

    :try_start_7
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_6

    :catch_0
    move-object/from16 v4, v19

    goto :goto_4

    :catch_1
    move-object/from16 v4, v19

    move-object/from16 v13, v20

    :catch_2
    :goto_4
    move-object/from16 v3, v21

    goto :goto_5

    :catch_3
    move-object/from16 v4, v19

    move-object/from16 v13, v20

    move-object/from16 v3, v21

    move-object/from16 v12, v23

    :catch_4
    :goto_5
    move-object/from16 v1, v24

    :catch_5
    :goto_6
    :try_start_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v9, 0x12c

    if-lt v0, v9, :cond_7

    invoke-interface {v11}, Landroid/database/Cursor;->isLast()Z

    move-result v9

    move v2, v9

    goto :goto_8

    :cond_7
    move/from16 v22, v7

    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v21, v3

    move-object/from16 v19, v4

    move-object v4, v12

    move-object/from16 v20, v13

    move/from16 v12, v25

    move/from16 v13, v26

    move/from16 v14, v27

    move/from16 v9, v30

    move/from16 v7, v31

    move/from16 v10, v32

    move/from16 v2, v33

    move-object v3, v1

    move-object/from16 v1, p1

    goto/16 :goto_1

    :cond_8
    move-object v1, v3

    move-object/from16 v3, v21

    const/4 v2, 0x1

    :goto_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    new-instance v0, Lcom/xiaomi/stat/a/k;

    invoke-direct {v0, v3, v1, v2}, Lcom/xiaomi/stat/a/k;-><init>(Lorg/json/JSONArray;Ljava/util/ArrayList;Z)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v11, :cond_9

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_9
    return-object v0

    :cond_a
    if-eqz v11, :cond_b

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_a

    :catchall_0
    move-exception v0

    goto :goto_b

    :catch_6
    move-exception v0

    move-object v7, v11

    goto :goto_9

    :catchall_1
    move-exception v0

    const/4 v11, 0x0

    goto :goto_b

    :catch_7
    move-exception v0

    const/4 v7, 0x0

    :goto_9
    :try_start_9
    const-string v1, "EventManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz v7, :cond_b

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_b
    :goto_a
    const/4 v1, 0x0

    return-object v1

    :catchall_2
    move-exception v0

    move-object v11, v7

    :goto_b
    if-eqz v11, :cond_c

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v0
.end method

.method private b(Lcom/xiaomi/stat/a/l;)V
    .locals 4

    invoke-direct {p0}, Lcom/xiaomi/stat/a/c;->d()V

    iget-object v0, p0, Lcom/xiaomi/stat/a/c;->l:Lcom/xiaomi/stat/a/a;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iget-object v2, p1, Lcom/xiaomi/stat/a/l;->a:Ljava/lang/String;

    const-string v3, "e"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/xiaomi/stat/a/l;->b:Ljava/lang/String;

    const-string v3, "eg"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/xiaomi/stat/a/l;->c:Ljava/lang/String;

    const-string v3, "tp"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v2, p1, Lcom/xiaomi/stat/a/l;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "ts"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-direct {p0, p1}, Lcom/xiaomi/stat/a/c;->c(Lcom/xiaomi/stat/a/l;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/xiaomi/stat/a/l;->d:Lcom/xiaomi/stat/al;

    invoke-direct {p0, v2}, Lcom/xiaomi/stat/a/c;->a(Lcom/xiaomi/stat/MiStatParams;)V

    :cond_0
    iget-object p0, p1, Lcom/xiaomi/stat/a/l;->d:Lcom/xiaomi/stat/al;

    invoke-virtual {p0}, Lcom/xiaomi/stat/MiStatParams;->toJsonString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "ps"

    invoke-virtual {v1, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p1, Lcom/xiaomi/stat/a/l;->f:Ljava/lang/String;

    const-string v2, "sub"

    invoke-virtual {v1, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p0, p1, Lcom/xiaomi/stat/a/l;->g:Z

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v2, "is_am"

    invoke-virtual {v1, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object p0, p1, Lcom/xiaomi/stat/a/l;->b:Ljava/lang/String;

    const-string p1, "mistat_basic"

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0xa

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "priority"

    invoke-virtual {v1, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p0, 0x0

    const-string p1, "events"

    invoke-virtual {v0, p1, p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method private b(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/stat/a/c;->l:Lcom/xiaomi/stat/a/a;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    mul-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "_id"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in ("

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v2, v0, :cond_1

    const-string v1, ","

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "events"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    const-string p1, "EventManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleted events number "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_1
    return-void
.end method

.method private c(Lcom/xiaomi/stat/a/l;)Z
    .locals 0

    iget-object p0, p1, Lcom/xiaomi/stat/a/l;->c:Ljava/lang/String;

    const-string p1, "profile_"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private d()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/stat/a/c;->m:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/stat/a/c;->m:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x3200000

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "database too big: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/stat/a/c;->m:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EventManager"

    invoke-static {v1, v0}, Lcom/xiaomi/stat/d/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/xiaomi/stat/a/c;->l:Lcom/xiaomi/stat/a/a;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "events"

    invoke-virtual {p0, v1, v0, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public a([Lcom/xiaomi/stat/a/b;)Lcom/xiaomi/stat/a/k;
    .locals 1

    new-instance v0, Lcom/xiaomi/stat/a/e;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/stat/a/e;-><init>(Lcom/xiaomi/stat/a/c;[Lcom/xiaomi/stat/a/b;)V

    new-instance p0, Ljava/util/concurrent/FutureTask;

    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {p0}, Lcom/xiaomi/stat/c;->a(Ljava/lang/Runnable;)V

    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/stat/a/k;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public a(Lcom/xiaomi/stat/a/l;)V
    .locals 1

    new-instance v0, Lcom/xiaomi/stat/a/d;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/stat/a/d;-><init>(Lcom/xiaomi/stat/a/c;Lcom/xiaomi/stat/a/l;)V

    invoke-static {v0}, Lcom/xiaomi/stat/c;->a(Ljava/lang/Runnable;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "add event: name="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/xiaomi/stat/a/l;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EventManager"

    invoke-static {p1, p0}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/xiaomi/stat/a/h;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/stat/a/h;-><init>(Lcom/xiaomi/stat/a/c;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/stat/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/stat/a/f;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/stat/a/f;-><init>(Lcom/xiaomi/stat/a/c;Ljava/util/ArrayList;)V

    new-instance p0, Ljava/util/concurrent/FutureTask;

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/xiaomi/stat/c;->a(Ljava/lang/Runnable;)V

    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public b()V
    .locals 1

    new-instance v0, Lcom/xiaomi/stat/a/g;

    invoke-direct {v0, p0}, Lcom/xiaomi/stat/a/g;-><init>(Lcom/xiaomi/stat/a/c;)V

    invoke-static {v0}, Lcom/xiaomi/stat/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c()J
    .locals 2

    new-instance v0, Lcom/xiaomi/stat/a/i;

    invoke-direct {v0, p0}, Lcom/xiaomi/stat/a/i;-><init>(Lcom/xiaomi/stat/a/c;)V

    new-instance p0, Ljava/util/concurrent/FutureTask;

    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {p0}, Lcom/xiaomi/stat/c;->a(Ljava/lang/Runnable;)V

    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method
