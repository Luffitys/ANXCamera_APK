.class public final enum Lcom/ss/android/vesdk/VEEditor$SET_RANGE_MODE;
.super Ljava/lang/Enum;
.source ""


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/VEEditor$SET_RANGE_MODE;

.field public static final enum EDITOR_TIMERANGE_FLAG_AFTER_SPEED:Lcom/ss/android/vesdk/VEEditor$SET_RANGE_MODE;

.field public static final enum EDITOR_TIMERANGE_FLAG_BEFORE_SPEED:Lcom/ss/android/vesdk/VEEditor$SET_RANGE_MODE;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/ss/android/vesdk/VEEditor$SET_RANGE_MODE;

    const-string v1, "EDITOR_TIMERANGE_FLAG_BEFORE_SPEED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/ss/android/vesdk/VEEditor$SET_RANGE_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ss/android/vesdk/VEEditor$SET_RANGE_MODE;->EDITOR_TIMERANGE_FLAG_BEFORE_SPEED:Lcom/ss/android/vesdk/VEEditor$SET_RANGE_MODE;

    new-instance v0, Lcom/ss/android/vesdk/VEEditor$SET_RANGE_MODE;

    const-string v1, "EDITOR_TIMERANGE_FLAG_AFTER_SPEED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/ss/android/vesdk/VEEditor$SET_RANGE_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ss/android/vesdk/VEEditor$SET_RANGE_MODE;->EDITOR_TIMERANGE_FLAG_AFTER_SPEED:Lcom/ss/android/vesdk/VEEditor$SET_RANGE_MODE;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/ss/android/vesdk/VEEditor$SET_RANGE_MODE;

    sget-object v4, Lcom/ss/android/vesdk/VEEditor$SET_RANGE_MODE;->EDITOR_TIMERANGE_FLAG_BEFORE_SPEED:Lcom/ss/android/vesdk/VEEditor$SET_RANGE_MODE;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/ss/android/vesdk/VEEditor$SET_RANGE_MODE;->$VALUES:[Lcom/ss/android/vesdk/VEEditor$SET_RANGE_MODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/ss/android/vesdk/VEEditor$SET_RANGE_MODE;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/VEEditor$SET_RANGE_MODE;
    .locals 1

    const-class v0, Lcom/ss/android/vesdk/VEEditor$SET_RANGE_MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VEEditor$SET_RANGE_MODE;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/VEEditor$SET_RANGE_MODE;
    .locals 1

    sget-object v0, Lcom/ss/android/vesdk/VEEditor$SET_RANGE_MODE;->$VALUES:[Lcom/ss/android/vesdk/VEEditor$SET_RANGE_MODE;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/VEEditor$SET_RANGE_MODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/VEEditor$SET_RANGE_MODE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    iget p0, p0, Lcom/ss/android/vesdk/VEEditor$SET_RANGE_MODE;->mValue:I

    return p0
.end method
