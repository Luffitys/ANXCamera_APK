.class final enum Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;
.super Ljava/lang/Enum;
.source ""


# static fields
.field private static final synthetic $VALUES:[Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

.field public static final enum BYTE:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

.field public static final enum BYTE_ARRAY:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

.field public static final enum INTEGER:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

.field public static final enum INTEGER_ARRAY:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

.field public static final enum LONG:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

.field public static final enum LONG_ARRAY:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

.field public static final enum SHORT:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

.field public static final enum SHORT_ARRAY:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

.field public static final enum STRING:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    const-string v1, "BYTE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->BYTE:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    new-instance v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    const-string v1, "SHORT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->SHORT:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    new-instance v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    const-string v1, "INTEGER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->INTEGER:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    new-instance v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    const-string v1, "LONG"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->LONG:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    new-instance v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    const-string v1, "STRING"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->STRING:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    new-instance v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    const-string v1, "BYTE_ARRAY"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->BYTE_ARRAY:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    new-instance v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    const-string v1, "SHORT_ARRAY"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->SHORT_ARRAY:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    new-instance v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    const-string v1, "INTEGER_ARRAY"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->INTEGER_ARRAY:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    new-instance v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    const-string v1, "LONG_ARRAY"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->LONG_ARRAY:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    const/16 v1, 0x9

    new-array v1, v1, [Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    sget-object v11, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->BYTE:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    aput-object v11, v1, v2

    sget-object v2, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->SHORT:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    aput-object v2, v1, v3

    sget-object v2, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->INTEGER:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    aput-object v2, v1, v4

    sget-object v2, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->LONG:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    aput-object v2, v1, v5

    sget-object v2, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->STRING:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    aput-object v2, v1, v6

    sget-object v2, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->BYTE_ARRAY:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    aput-object v2, v1, v7

    sget-object v2, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->SHORT_ARRAY:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    aput-object v2, v1, v8

    sget-object v2, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->INTEGER_ARRAY:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    aput-object v2, v1, v9

    aput-object v0, v1, v10

    sput-object v1, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->$VALUES:[Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;
    .locals 1

    const-class v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    return-object p0
.end method

.method public static values()[Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;
    .locals 1

    sget-object v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->$VALUES:[Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    invoke-virtual {v0}, [Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    return-object v0
.end method
