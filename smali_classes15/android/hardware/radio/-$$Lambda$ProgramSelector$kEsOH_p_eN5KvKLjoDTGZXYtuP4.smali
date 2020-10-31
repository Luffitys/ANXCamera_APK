.class public final synthetic Landroid/hardware/radio/-$$Lambda$ProgramSelector$kEsOH_p_eN5KvKLjoDTGZXYtuP4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic INSTANCE:Landroid/hardware/radio/-$$Lambda$ProgramSelector$kEsOH_p_eN5KvKLjoDTGZXYtuP4;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/hardware/radio/-$$Lambda$ProgramSelector$kEsOH_p_eN5KvKLjoDTGZXYtuP4;

    invoke-direct {v0}, Landroid/hardware/radio/-$$Lambda$ProgramSelector$kEsOH_p_eN5KvKLjoDTGZXYtuP4;-><init>()V

    sput-object v0, Landroid/hardware/radio/-$$Lambda$ProgramSelector$kEsOH_p_eN5KvKLjoDTGZXYtuP4;->INSTANCE:Landroid/hardware/radio/-$$Lambda$ProgramSelector$kEsOH_p_eN5KvKLjoDTGZXYtuP4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Landroid/hardware/radio/ProgramSelector;->lambda$withSecondaryPreferred$2(I)[Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object p1

    return-object p1
.end method
