.class public final enum Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;
.super Ljava/lang/Enum;
.source ""


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

.field public static final enum EDITOR_SEEK_FLAG_LAST_UpdateIn:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

.field public static final enum EDITOR_SEEK_FLAG_LAST_UpdateInOut:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

.field public static final enum EDITOR_SEEK_FLAG_LAST_UpdateOut:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

.field public static final enum EDITOR_SEEK_FLAG_LastSeek:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

.field public static final enum EDITOR_SEEK_FLAG_OnGoing:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

.field public static final enum EDITOR_SEEK_FLAG_ToIframe:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    const-string v1, "EDITOR_SEEK_FLAG_OnGoing"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->EDITOR_SEEK_FLAG_OnGoing:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    new-instance v0, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    const-string v1, "EDITOR_SEEK_FLAG_LastSeek"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->EDITOR_SEEK_FLAG_LastSeek:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    new-instance v0, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    const-string v1, "EDITOR_SEEK_FLAG_ToIframe"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->EDITOR_SEEK_FLAG_ToIframe:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    new-instance v0, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    sget-object v1, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->EDITOR_SEEK_FLAG_LastSeek:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->getValue()I

    move-result v1

    const/4 v5, 0x4

    or-int/2addr v1, v5

    const-string v6, "EDITOR_SEEK_FLAG_LAST_UpdateIn"

    const/4 v7, 0x3

    invoke-direct {v0, v6, v7, v1}, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->EDITOR_SEEK_FLAG_LAST_UpdateIn:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    new-instance v0, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    sget-object v1, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->EDITOR_SEEK_FLAG_LastSeek:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->getValue()I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    const-string v6, "EDITOR_SEEK_FLAG_LAST_UpdateOut"

    invoke-direct {v0, v6, v5, v1}, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->EDITOR_SEEK_FLAG_LAST_UpdateOut:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    new-instance v0, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    sget-object v1, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->EDITOR_SEEK_FLAG_LastSeek:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->getValue()I

    move-result v1

    or-int/lit8 v1, v1, 0x10

    const-string v6, "EDITOR_SEEK_FLAG_LAST_UpdateInOut"

    const/4 v8, 0x5

    invoke-direct {v0, v6, v8, v1}, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->EDITOR_SEEK_FLAG_LAST_UpdateInOut:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    sget-object v6, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->EDITOR_SEEK_FLAG_OnGoing:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    aput-object v6, v1, v2

    sget-object v2, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->EDITOR_SEEK_FLAG_LastSeek:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    aput-object v2, v1, v3

    sget-object v2, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->EDITOR_SEEK_FLAG_ToIframe:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    aput-object v2, v1, v4

    sget-object v2, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->EDITOR_SEEK_FLAG_LAST_UpdateIn:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    aput-object v2, v1, v7

    sget-object v2, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->EDITOR_SEEK_FLAG_LAST_UpdateOut:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    aput-object v2, v1, v5

    aput-object v0, v1, v8

    sput-object v1, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->$VALUES:[Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;
    .locals 1

    const-class v0, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;
    .locals 1

    sget-object v0, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->$VALUES:[Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    iget p0, p0, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->mValue:I

    return p0
.end method
