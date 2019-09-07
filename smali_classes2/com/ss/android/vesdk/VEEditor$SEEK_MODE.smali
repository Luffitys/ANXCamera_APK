.class public final enum Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;
.super Ljava/lang/Enum;
.source "VEEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SEEK_MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;",
        ">;"
    }
.end annotation


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

    const/4 v1, 0x0

    const-string v2, "EDITOR_SEEK_FLAG_OnGoing"

    invoke-direct {v0, v2, v1, v1}, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->EDITOR_SEEK_FLAG_OnGoing:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    new-instance v0, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    const/4 v2, 0x1

    const-string v3, "EDITOR_SEEK_FLAG_LastSeek"

    invoke-direct {v0, v3, v2, v2}, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->EDITOR_SEEK_FLAG_LastSeek:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    new-instance v0, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    const/4 v3, 0x2

    const-string v4, "EDITOR_SEEK_FLAG_ToIframe"

    invoke-direct {v0, v4, v3, v3}, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->EDITOR_SEEK_FLAG_ToIframe:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    new-instance v0, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    sget-object v4, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->EDITOR_SEEK_FLAG_LastSeek:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    invoke-virtual {v4}, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->getValue()I

    move-result v4

    const/4 v5, 0x4

    or-int/2addr v4, v5

    const/4 v6, 0x3

    const-string v7, "EDITOR_SEEK_FLAG_LAST_UpdateIn"

    invoke-direct {v0, v7, v6, v4}, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->EDITOR_SEEK_FLAG_LAST_UpdateIn:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    new-instance v0, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    sget-object v4, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->EDITOR_SEEK_FLAG_LastSeek:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    invoke-virtual {v4}, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->getValue()I

    move-result v4

    or-int/lit8 v4, v4, 0x8

    const-string v7, "EDITOR_SEEK_FLAG_LAST_UpdateOut"

    invoke-direct {v0, v7, v5, v4}, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->EDITOR_SEEK_FLAG_LAST_UpdateOut:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    new-instance v0, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    sget-object v4, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->EDITOR_SEEK_FLAG_LastSeek:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    invoke-virtual {v4}, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->getValue()I

    move-result v4

    or-int/lit8 v4, v4, 0x10

    const/4 v7, 0x5

    const-string v8, "EDITOR_SEEK_FLAG_LAST_UpdateInOut"

    invoke-direct {v0, v8, v7, v4}, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->EDITOR_SEEK_FLAG_LAST_UpdateInOut:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    sget-object v4, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->EDITOR_SEEK_FLAG_OnGoing:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    aput-object v4, v0, v1

    sget-object v1, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->EDITOR_SEEK_FLAG_LastSeek:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->EDITOR_SEEK_FLAG_ToIframe:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->EDITOR_SEEK_FLAG_LAST_UpdateIn:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->EDITOR_SEEK_FLAG_LAST_UpdateOut:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->EDITOR_SEEK_FLAG_LAST_UpdateInOut:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    aput-object v1, v0, v7

    sput-object v0, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->$VALUES:[Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

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
