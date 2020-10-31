.class synthetic Lmiui/maml/data/WebServiceBinder$1;
.super Ljava/lang/Object;
.source "WebServiceBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/WebServiceBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$miui$maml$data$WebServiceBinder$RequestMethod:[I

.field static final synthetic $SwitchMap$miui$maml$data$WebServiceBinder$ResponseProtocol:[I

.field static final synthetic $SwitchMap$miui$maml$elements$ListScreenElement$ColumnInfo$Type:[I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    invoke-static {}, Lmiui/maml/data/WebServiceBinder$RequestMethod;->values()[Lmiui/maml/data/WebServiceBinder$RequestMethod;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lmiui/maml/data/WebServiceBinder$1;->$SwitchMap$miui$maml$data$WebServiceBinder$RequestMethod:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lmiui/maml/data/WebServiceBinder$RequestMethod;->GET:Lmiui/maml/data/WebServiceBinder$RequestMethod;

    invoke-virtual {v2}, Lmiui/maml/data/WebServiceBinder$RequestMethod;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    move-exception v0

    :goto_14
    const/4 v0, 0x2

    :try_start_15
    sget-object v2, Lmiui/maml/data/WebServiceBinder$1;->$SwitchMap$miui$maml$data$WebServiceBinder$RequestMethod:[I

    sget-object v3, Lmiui/maml/data/WebServiceBinder$RequestMethod;->POST:Lmiui/maml/data/WebServiceBinder$RequestMethod;

    invoke-virtual {v3}, Lmiui/maml/data/WebServiceBinder$RequestMethod;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_20

    goto :goto_21

    :catch_20
    move-exception v2

    :goto_21
    invoke-static {}, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->values()[Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lmiui/maml/data/WebServiceBinder$1;->$SwitchMap$miui$maml$data$WebServiceBinder$ResponseProtocol:[I

    :try_start_2a
    sget-object v3, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->XML:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    invoke-virtual {v3}, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_32} :catch_33

    goto :goto_34

    :catch_33
    move-exception v2

    :goto_34
    :try_start_34
    sget-object v2, Lmiui/maml/data/WebServiceBinder$1;->$SwitchMap$miui$maml$data$WebServiceBinder$ResponseProtocol:[I

    sget-object v3, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->JSONobj:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    invoke-virtual {v3}, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3e} :catch_3f

    goto :goto_40

    :catch_3f
    move-exception v2

    :goto_40
    const/4 v2, 0x3

    :try_start_41
    sget-object v3, Lmiui/maml/data/WebServiceBinder$1;->$SwitchMap$miui$maml$data$WebServiceBinder$ResponseProtocol:[I

    sget-object v4, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->JSONarray:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    invoke-virtual {v4}, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_41 .. :try_end_4b} :catch_4c

    goto :goto_4d

    :catch_4c
    move-exception v3

    :goto_4d
    const/4 v3, 0x4

    :try_start_4e
    sget-object v4, Lmiui/maml/data/WebServiceBinder$1;->$SwitchMap$miui$maml$data$WebServiceBinder$ResponseProtocol:[I

    sget-object v5, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->BITMAP:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    invoke-virtual {v5}, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_58
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_58} :catch_59

    goto :goto_5a

    :catch_59
    move-exception v4

    :goto_5a
    invoke-static {}, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->values()[Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lmiui/maml/data/WebServiceBinder$1;->$SwitchMap$miui$maml$elements$ListScreenElement$ColumnInfo$Type:[I

    :try_start_63
    sget-object v5, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->STRING:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    invoke-virtual {v5}, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_6b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_63 .. :try_end_6b} :catch_6c

    goto :goto_6d

    :catch_6c
    move-exception v1

    :goto_6d
    :try_start_6d
    sget-object v1, Lmiui/maml/data/WebServiceBinder$1;->$SwitchMap$miui$maml$elements$ListScreenElement$ColumnInfo$Type:[I

    sget-object v4, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->DOUBLE:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    invoke-virtual {v4}, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->ordinal()I

    move-result v4

    aput v0, v1, v4
    :try_end_77
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6d .. :try_end_77} :catch_78

    goto :goto_79

    :catch_78
    move-exception v0

    :goto_79
    :try_start_79
    sget-object v0, Lmiui/maml/data/WebServiceBinder$1;->$SwitchMap$miui$maml$elements$ListScreenElement$ColumnInfo$Type:[I

    sget-object v1, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->FLOAT:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    invoke-virtual {v1}, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_83
    .catch Ljava/lang/NoSuchFieldError; {:try_start_79 .. :try_end_83} :catch_84

    goto :goto_85

    :catch_84
    move-exception v0

    :goto_85
    :try_start_85
    sget-object v0, Lmiui/maml/data/WebServiceBinder$1;->$SwitchMap$miui$maml$elements$ListScreenElement$ColumnInfo$Type:[I

    sget-object v1, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->INTEGER:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    invoke-virtual {v1}, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_8f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_85 .. :try_end_8f} :catch_90

    goto :goto_91

    :catch_90
    move-exception v0

    :goto_91
    :try_start_91
    sget-object v0, Lmiui/maml/data/WebServiceBinder$1;->$SwitchMap$miui$maml$elements$ListScreenElement$ColumnInfo$Type:[I

    sget-object v1, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->LONG:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    invoke-virtual {v1}, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_9c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_91 .. :try_end_9c} :catch_9d

    goto :goto_9e

    :catch_9d
    move-exception v0

    :goto_9e
    return-void
.end method
